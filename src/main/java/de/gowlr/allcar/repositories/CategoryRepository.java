
package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcCategoryEntity;

// Detailierte Kommentare befinden sich im ProductTypeRepository.java
@Repository
public interface CategoryRepository extends JpaRepository<EcCategoryEntity, Integer> {
    List<EcCategoryEntity> findAll();
}
