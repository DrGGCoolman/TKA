
package de.gowlr.allcar.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcSearchWordsEntity;

// Detailierte Kommentare befinden sich im ProductTypeRepository.java
@Repository
public interface SearchwordRepository extends JpaRepository<EcSearchWordsEntity, Integer> {

}
