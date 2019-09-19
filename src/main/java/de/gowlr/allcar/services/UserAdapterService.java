package de.gowlr.allcar.services;

import javax.transaction.Transactional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import de.gowlr.allcar.entities.EcUserEntity;
import de.gowlr.allcar.repositories.UserRepository;

@Service
@Transactional
public class UserAdapterService implements UserDetailsService {

    private final UserRepository UserRepository;

    public UserAdapterService(UserRepository userRepository) {
        this.UserRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        EcUserEntity user = UserRepository.findByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException(email);
        }
        return new UserAdapter(user);
    }
}
 