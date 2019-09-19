
package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import de.gowlr.allcar.entities.EcProductTypeEntity;;

@Repository
public interface ProductTypeRepository extends JpaRepository<EcProductTypeEntity, Long> {

        EcProductTypeEntity findById(Integer id);

        List<EcProductTypeEntity> findByModelContainingIgnoreCase(String model);

        List<EcProductTypeEntity> findByVariantContainingIgnoreCase(String variant);

        List<EcProductTypeEntity> findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(String brandTitle);

}
