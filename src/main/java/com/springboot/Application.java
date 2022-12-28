package com.springboot;


import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.r2dbc.repository.config.EnableR2dbcRepositories;
import org.springframework.web.reactive.config.EnableWebFlux;

/**
 * @developer Shahidul Hasan
 * class Application
 * StartUpClass
 */
@Slf4j
@EnableWebFlux
@SpringBootApplication
@EnableR2dbcRepositories
public class Application {

    public static void main(String[] args){
        SpringApplication.run(Application.class, args);
    }
}
