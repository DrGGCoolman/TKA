package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcUserEntity;

@Repository
public interface UserRepository extends CrudRepository<EcUserEntity, Long> {
    
    List<EcUserEntity> findAll();

    EcUserEntity findByEmail(String email);

    List<EcUserEntity> findByEmailIgnoreCase(String email);

    List<EcUserEntity> findByEcRoleByRoleIdRoleTitleIgnoreCase(String roleTitle);

}