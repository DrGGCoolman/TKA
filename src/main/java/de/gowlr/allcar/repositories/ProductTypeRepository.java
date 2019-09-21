
package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import de.gowlr.allcar.entities.EcProductTypeEntity;;

@Repository
public interface ProductTypeRepository extends JpaRepository<EcProductTypeEntity, Long> {

        EcProductTypeEntity findById(Integer id);

        List<EcProductTypeEntity> findByModelContainingIgnoreCase(String model);

        List<EcProductTypeEntity> findByVariantContainingIgnoreCase(String variant);

        List<EcProductTypeEntity> findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(String brandTitle);

        List<EcProductTypeEntity> findByHighlighted(Boolean highlighted);

        @Query("SELECT DISTINCT fuelType FROM EcProductTypeEntity")
        List<String> findDistinctFuels();

        @Query("SELECT DISTINCT gearingType FROM EcProductTypeEntity")
        List<String> findDistinctTransmissions();

        @Query("SELECT DISTINCT driveSystem FROM EcProductTypeEntity")
        List<String> findDistinctDirveSystems();

        @Query("SELECT DISTINCT minimumAge FROM EcProductTypeEntity")
        List<Integer> findDistinctDriverAges();

        @Query("SELECT MIN(age) FROM EcProductTypeEntity")
        Integer findMinYear();

        @Query("SELECT MIN(powerPs) FROM EcProductTypeEntity")
        Integer findMinPower();

        @Query("SELECT MAX(age) FROM EcProductTypeEntity")
        Integer findMaxYear();

}
