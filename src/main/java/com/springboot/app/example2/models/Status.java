package com.springboot.app.example2.models;


import lombok.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.validation.constraints.NotBlank;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

/**
 * @developer Shahidul Hasan
 * class Status
 * Model
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@EqualsAndHashCode(callSuper = false)
@Table("status")
@Getter @Setter @NotBlank
public class Status {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String status;
}