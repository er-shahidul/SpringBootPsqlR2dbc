package com.springboot.sec.user.models.repositories;


import com.springboot.sec.user.models.Role;
import org.springframework.stereotype.Repository;
import org.springframework.data.r2dbc.repository.R2dbcRepository;

/**
 * @developer Shahidul Hasan
 * interface RoleRepository
 * Repository
 */
@Repository
public interface RoleRepository extends R2dbcRepository<Role, Long> {

}
