
package de.gowlr.allcar.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.EcBrandEntity;

@Repository
public interface BrandRepository extends CrudRepository<EcBrandEntity, Long> {

}
