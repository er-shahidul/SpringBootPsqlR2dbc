package com.springboot.sec.user.models;


import lombok.*;
import java.util.UUID;
import java.io.Serial;
import java.util.Collection;
import jakarta.validation.constraints.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import org.springframework.data.annotation.Id;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.data.relational.core.mapping.Table;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * @developer Shahidul Hasan
 * class User
 * Model
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@EqualsAndHashCode(callSuper = false)
@Table("sec_users")
@Getter @Setter
public class User implements UserDetails {

    @Serial private static final long serialVersionUID = 1L;

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private UUID userid;
    private Boolean enabled = true;

    @Override
    public String getUsername() {
        return this.email;
    }

    @NotEmpty(message = "Firstname should not be empty")
    private String firstName;

    @NotEmpty(message = "{lastname.not.empty}")
    private String lastName;

    @NotEmpty(message = "Email should not be empty")
    @Email(regexp = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$", message = "Invalid email address")
    private String email;
    @NotEmpty(message = "Address should not be empty")
    private String address;

    @NotEmpty(message = "Contact number1 should not be empty")
    private String contactNumber1;

    @JsonIgnore @NotEmpty(message = "Password should not be empty")
    private String password;

    @JsonIgnore private String passwordSalt;
    private UUID privilege;
    @JsonIgnore private Long status;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @JsonIgnore @Override
    public String getPassword() {
        return password;
    }

    @JsonProperty
    public void setPassword(String password) {
        this.password = password;
    }

    @JsonIgnore @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @JsonIgnore @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @JsonIgnore @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }
}