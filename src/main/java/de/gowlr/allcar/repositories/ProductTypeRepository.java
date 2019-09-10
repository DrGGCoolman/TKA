
package de.gowlr.allcar.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcProductTypeEntity;;

@Repository
public interface ProductTypeRepository extends CrudRepository<EcProductTypeEntity, Long> {
    List<EcProductTypeEntity> findByModel(String mode);
}