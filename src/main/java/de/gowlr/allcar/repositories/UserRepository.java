package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcUserEntity;

@Repository
public interface UserRepository extends JpaRepository<EcUserEntity, Long> {

    List<EcUserEntity> findAll();

    EcUserEntity findByUsername(String username);

    EcUserEntity findByUsernameIgnoreCase(String username);

    List<EcUserEntity> findByRole(String role);

}