package com.springboot.base.interfaces.controllers;


import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import reactor.core.publisher.Mono;

/**
 * @developer Shahidul Hasan
 * interface AddressesController
 *
 */
public interface AddressesController<E, ID> {
    Mono<ResponseEntity<E>> viewAddress(ID id);
    Mono<Page<E>> listAddress(int page, int size, Authentication authentication, ID id);
    Mono<?> createAddress(ID id, E entity);
    Mono<ResponseEntity<E>> updateAddress(ID id, E entity);
    Mono<ResponseEntity<E>> deleteAddress(ID id, E entity);
}
