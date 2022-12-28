package com.springboot.app.example2.models.repositories;


import com.springboot.app.example2.models.Status;
import org.springframework.stereotype.Repository;
import org.springframework.data.r2dbc.repository.R2dbcRepository;

/**
 * @developer Shahidul Hasan
 * interface StatusRepository
 * Repository
 */
@Repository
public interface StatusRepository extends R2dbcRepository<Status, Number> {

}
