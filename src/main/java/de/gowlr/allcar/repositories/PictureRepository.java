package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.*;

@Repository
public interface PictureRepository extends JpaRepository<EcPicturesEntity, Long> {

    List<EcPicturesEntity> findAll();
    List<EcPicturesEntity> findBy();

}