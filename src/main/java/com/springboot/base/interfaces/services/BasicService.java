package com.springboot.base.interfaces.services;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.Authentication;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

/**
 * @developer Shahidul Hasan
 * interface BasicService
 *
 */
public interface BasicService<E, ID> {
    Mono<?> save(E entity);
    Mono<E> edit(ID id, E entity);
    Mono<E> delete(ID id, E entity);
    Mono<E> view(ID id);
    Mono<Page<E>> list(PageRequest pageRequest, Authentication authentication);
    Flux<E> all(Authentication authentication);
}
