package com.springboot.sec.auth.utils;


import java.security.Key;
import java.util.*;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import reactor.core.publisher.Mono;
import com.springboot.sec.user.models.User;
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import com.springboot.sec.user.models.repositories.PrivilegeRepository;

/**
 * @developer Shahidul Hasan
 * class JWTUtil
 * Component
 */
@Component
public class JWTUtil {

    @Autowired
    PrivilegeRepository privilegeRepository;

    public Mono<String> generateToken(User user) {
        return privilegeRepository.findByUserPrivilege(user.getPrivilege()).flatMap(p -> {
            Map<String, Object> claims = new HashMap<>();
            claims.put("role", p.getRoles());
            return Mono.just(doGenerateToken(claims, user.getUsername()));
        });
    }

    @Value("${application.jjwt.secret}")
    private String secret;

    @Value("${application.jjwt.expiration}")
    private String expirationTime;

    private Key key;

    @PostConstruct
    public void init() {
        this.key = Keys.hmacShaKeyFor(secret.getBytes());
    }

    public Claims getAllClaimsFromToken(String token) {
        return Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(token).getBody();
    }

    public String getUsernameFromToken(String token) {
        return getAllClaimsFromToken(token).getSubject();
    }

    public Date getExpirationDateFromToken(String token) {
        return getAllClaimsFromToken(token).getExpiration();
    }

    protected Boolean isTokenExpired(String token) {
        final Date expiration = getExpirationDateFromToken(token);
        return expiration.before(new Date());
    }

    protected String doGenerateToken(Map<String, Object> claims, String username) {
        Long expirationTimeLong = Long.parseLong(expirationTime); //in second
        final Date createdDate = new Date();
        final Date expirationDate = new Date(createdDate.getTime() + expirationTimeLong * 1000);

        return Jwts.builder()
                .setClaims(claims)
                .setSubject(username)
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .signWith(key)
                .compact();
    }

    public Boolean validateToken(String token) {
        return !isTokenExpired(token);
    }
}
