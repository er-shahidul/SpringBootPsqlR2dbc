package com.springboot.sec.auth.viewModels;

import lombok.Data;
import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * @developer Shahidul Hasan
 * class AuthRequest
 * Model
 */
@Data @NoArgsConstructor @AllArgsConstructor @ToString
public class AuthRequest {
    private String username;
    private String password;
}
