package com.springboot.sec.auth.controllers;


import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import reactor.core.publisher.Mono;
import org.springframework.http.HttpStatus;
import com.springboot.sec.auth.utils.JWTUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.springboot.sec.auth.utils.PBKDF2Encoder;
import com.springboot.sec.auth.viewModels.AuthRequest;
import com.springboot.sec.auth.viewModels.AuthResponse;
import com.springboot.sec.user.models.repositories.UserRepository;

/**
 * @developer Shahidul Hasan
 * class AuthenticationController
 * RestController
 */
@RestController
@AllArgsConstructor
@RequestMapping(value = "${api.version}")
public class AuthenticationController {

    @Autowired
    private JWTUtil jwtUtil;
    private UserRepository userRepository;
    private PBKDF2Encoder passwordEncoder;

    @ResponseBody
    @PostMapping("/auth/login")
    public Mono<ResponseEntity<AuthResponse>> login(@RequestBody AuthRequest ar) {
        return userRepository.findByEmail(ar.getUsername())
            .filter(userDetails -> passwordEncoder.base64(ar.getPassword()).equals(userDetails.getPasswordSalt()))
            .filter(userDetails -> passwordEncoder.encode(passwordEncoder.base64(ar.getPassword())).equals(userDetails.getPassword()))
            .flatMap(userDetails -> jwtUtil.generateToken(userDetails)
            .map(ud -> ResponseEntity.ok(new AuthResponse(ud)))
            ).switchIfEmpty(Mono.just(ResponseEntity.status(HttpStatus.UNAUTHORIZED).build()));
    }
}
