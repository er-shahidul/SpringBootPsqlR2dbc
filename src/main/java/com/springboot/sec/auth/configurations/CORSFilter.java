package com.springboot.sec.auth.configurations;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.config.CorsRegistry;
import org.springframework.web.reactive.config.EnableWebFlux;
import org.springframework.web.reactive.config.WebFluxConfigurer;

/**
 * @developer Shahidul Hasan
 * class CORSFilter
 * Configuration
 */
@Configuration
@EnableWebFlux
public class CORSFilter implements WebFluxConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**").allowedOrigins(crossOrigin).allowedMethods("*").allowedHeaders("*");
    }

    @Value("${application.crossOrigin}")
    private String crossOrigin;
}