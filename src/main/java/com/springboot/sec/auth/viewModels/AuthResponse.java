package com.springboot.sec.auth.viewModels;

import lombok.Data;
import lombok.ToString;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

/**
 * @developer Shahidul Hasan
 * class AuthResponse
 * Model
 */
@Data @NoArgsConstructor @AllArgsConstructor @ToString
public class AuthResponse {
    private String token;
}
