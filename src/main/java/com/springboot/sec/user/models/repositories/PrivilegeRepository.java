package com.springboot.sec.user.models.repositories;


import java.util.UUID;
import reactor.core.publisher.Mono;
import com.springboot.sec.user.models.Privilege;
import org.springframework.stereotype.Repository;
import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.r2dbc.repository.R2dbcRepository;

/**
 * @developer Shahidul Hasan
 * interface PrivilegeRepository
 * Repository
 */
@Repository
public interface PrivilegeRepository extends R2dbcRepository<Privilege, UUID> {
    @Query("select * from sec_privilege where id = :privilegeUUID")
    Mono<Privilege> findByUserPrivilege(UUID privilegeUUID);
}
