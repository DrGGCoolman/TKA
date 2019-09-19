package de.gowlr.allcar.services;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import de.gowlr.allcar.entities.EcUserEntity;


public class UserAdapter implements UserDetails {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private final EcUserEntity user; // adaptiertes Objekt

    public UserAdapter(EcUserEntity user) {
        this.user = user;
    }

    public EcUserEntity getUser() {
        return user;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singleton(new SimpleGrantedAuthority("ROLE_" + user.getEcRoleByRoleId().getRoleTitle()));
    }

    public String getPassword() {
        return user.getPassword();
    }

    public String getUsername() {
        return user.getEmail();
    }

    public boolean isAccountNonExpired() {
        return true;
    }

    public boolean isAccountNonLocked() {
        return true;
    }

    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean isEnabled() {
        return true;
    }

}