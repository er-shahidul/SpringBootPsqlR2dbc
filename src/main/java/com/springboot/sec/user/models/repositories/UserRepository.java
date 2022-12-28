package com.springboot.sec.user.models.repositories;


import java.util.UUID;
import reactor.core.publisher.Mono;
import com.springboot.sec.user.models.User;
import org.springframework.stereotype.Repository;
import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.r2dbc.repository.R2dbcRepository;

/**
 * @developer Shahidul Hasan
 * interface UserRepository
 * Repository
 */
@Repository
public interface UserRepository extends R2dbcRepository<User, UUID> {
    @Query("select * from sec_users where email = :email")
    Mono<User> findByEmail(String email);
}
