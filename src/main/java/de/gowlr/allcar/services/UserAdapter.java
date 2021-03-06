package de.gowlr.allcar.services;

import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import de.gowlr.allcar.entities.EcUserEntity;

// Eigene Nutzerklasse (EcUserEntity) wird übersetzt auf die Nutzerklasse des UserDetails-Interface, 
// welches implementiert werden muss, damit Spring-Security genutzt werden kann.
public class UserAdapter implements UserDetails {

    /**
     *
     */
    private static final long serialVersionUID = 4475382548828479967L;
    private final EcUserEntity user; // adaptiertes Objekt

    public UserAdapter(EcUserEntity user) {
        this.user = user;
    }

    public EcUserEntity getUser() {
        return user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Set.of(new SimpleGrantedAuthority("ROLE_" + user.getRole()));
    }

    public String getPassword() {
        return user.getPassword();
    }

    public String getUsername() {
        return user.getUsername();
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