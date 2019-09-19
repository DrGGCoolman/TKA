package de.gowlr.allcar.services;

import java.util.Date;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

// import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import de.gowlr.allcar.repositories.UserRepository;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor

public class UserService {

    private final UserRepository userRepository;
    // private final PasswordEncoder passwordEncoder;

}