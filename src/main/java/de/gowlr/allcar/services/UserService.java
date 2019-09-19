package de.gowlr.allcar.services;

import lombok.RequiredArgsConstructor;
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

    @PostConstruct
    void init() {
        // dev user anlegen?
    }

    private void createUser() {
        // userRepository.save(new User(name, passwordEncoder.encode(password), role));
    }

    public List<EcUserEntity> findAll() {
        return userRepository.findAll();
    }

}