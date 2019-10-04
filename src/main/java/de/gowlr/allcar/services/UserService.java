package de.gowlr.allcar.services;

import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import de.gowlr.allcar.repositories.UserRepository;
import de.gowlr.allcar.entities.*;
import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import java.io.Console;
import java.util.List;

// Definiert das Erstellen eines Users und die erforderlichen Parameter 
@RequiredArgsConstructor
@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    // Konstanten für Nutzerrollen. Verhindert vertippen beim Setzen von Rollen. 
    public static String USER_ROLE = "USER";
    public static String ADMIN_ROLE = "ADMIN";

    // Legt einen Initial-User und Intitial-Admin an 
    @PostConstruct
    void init() {
        createUser("user@gmail.com", "1234", USER_ROLE);
        createUser("admin@gmail.com", "1234", ADMIN_ROLE);
    }

    // Legt neuen Nutzer an
    private void createUser(String username, String password, String role) {
        try {
            userRepository.save(new EcUserEntity(username, passwordEncoder.encode(password), role));

        } catch (Exception e) {
            
        }
    }

    // Gibt alle User zurück
    public List<EcUserEntity> findAll() {
        return userRepository.findAll();
    }

}