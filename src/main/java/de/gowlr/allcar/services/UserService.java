package de.gowlr.allcar.services;

import lombok.RequiredArgsConstructor;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import de.gowlr.allcar.repositories.UserRepository;
import de.gowlr.allcar.entities.*;
import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import java.util.List;

@RequiredArgsConstructor
@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;


    @PostConstruct
    void init() {
        // createUser("Anne", "123456", 1);
        // createUser("Benedikt", "987654", User.USER_ROLE);
    }

    private void createUser(String name, String password, String role) {
        // userRepository.save(new EcUserEntity(name, passwordEncoder.encode(password), role));
    }


    public List<EcUserEntity> findAll() {
        return userRepository.findAll();
    }

}