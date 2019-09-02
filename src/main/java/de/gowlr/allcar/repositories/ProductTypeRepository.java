
package de.gowlr.allcar.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import de.gowlr.allcar.entities.ProductType;;

@Repository
public interface ProductTypeRepository extends CrudRepository<ProductType, Long> {
    List<ProductType> findByModel(String mode);
}