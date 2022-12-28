package com.springboot.sec.user.models;


import lombok.*;
import java.util.List;
import java.util.UUID;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.annotation.Id;
import jakarta.validation.constraints.NotBlank;
import org.springframework.data.relational.core.mapping.Table;

/**
 * @developer Shahidul Hasan
 * class Privilege
 * Model
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@EqualsAndHashCode(callSuper = false)
@Table("sec_privilege")
@Getter @Setter
public class Privilege {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private UUID id;
    private Long level; // user wise
    @NotBlank(message = "Name should not be empty")
    private String name;
    @NotNull(message = "Roles should not be empty")
    private List<String> roles;
    private Boolean status = true;
}