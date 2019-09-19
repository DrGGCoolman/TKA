
package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import de.gowlr.allcar.entities.EcProductTypeEntity;;

@Repository
public interface ProductTypeRepository extends CrudRepository<EcProductTypeEntity, Long> {
        
        EcProductTypeEntity findById(Integer id);

        List<EcProductTypeEntity> findByModelContainingIgnoreCase(String model);

        List<EcProductTypeEntity> findByVariantContainingIgnoreCase(String variant);

        List<EcProductTypeEntity> findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(String brandTitle);

}
