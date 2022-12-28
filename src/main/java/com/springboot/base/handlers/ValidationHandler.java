package com.springboot.base.handlers;


import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.support.WebExchangeBindException;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @developer Shahidul Hasan
 * class ValidationHandler
 * ControllerAdvice
 */
@ControllerAdvice
public class ValidationHandler {

    @ExceptionHandler(WebExchangeBindException.class)
    public ResponseEntity<Object> handleException(WebExchangeBindException e) {
        Map<String, String> error = new LinkedHashMap<>();
        var errors = e.getBindingResult().getFieldErrors();
        for (FieldError var : errors) {
            error.put(var.getField(), var.getDefaultMessage());
        }

        return ResponseEntity.badRequest().body(error);
    }
}
