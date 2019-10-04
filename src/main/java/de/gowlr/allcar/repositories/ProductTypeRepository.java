
package de.gowlr.allcar.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import de.gowlr.allcar.entities.EcProductTypeEntity;;

// Ziel des Repositories ist es, häufig verwendete Datenbankzugriffe, die für die Persistenzspeicherung erfoderlich sind, erheblich zu reduzieren. 
// Die Abfragen werden in der Java.Persistence API formuliert und mittels Spring-Boot in valides SQL übersetzt  
@Repository
public interface ProductTypeRepository extends JpaRepository<EcProductTypeEntity, Integer> {

        // Allgemeine Operationen zur Datenselektion. 

        Optional<EcProductTypeEntity> findById(Integer id);

        List<EcProductTypeEntity> findByModelContainingIgnoreCase(String model);

        List<EcProductTypeEntity> findByVariantContainingIgnoreCase(String variant);

        List<EcProductTypeEntity> findByEcBrandByBrandIdBrandTitleContainingIgnoreCase(String brandTitle);

        List<EcProductTypeEntity> findByHighlighted(Boolean highlighted);

        List<EcProductTypeEntity> findByEcCategoryByCategoryIdTitleIgnoreCase(String title);


        // Bezieht Daten zum generieren unterschiedlicher Ansichten

        List<EcProductTypeEntity> findByEcCategoryByCategoryIdTitleIn(List<String> titles);

        List<EcProductTypeEntity> findByEcBrandByBrandIdBrandTitleIn(List<String> brandTitle);

        List<EcProductTypeEntity> findByGearingTypeIn(List<String> gearingTypes);

        List<EcProductTypeEntity> findByAgeBetween(Integer min, Integer max);

        List<EcProductTypeEntity> findByAgeGreaterThanEqual(Integer min);

        List<EcProductTypeEntity> findByAgeLessThanEqual(Integer max);

        List<EcProductTypeEntity> findByMinimumAgeGreaterThanEqual(Integer minAge);

        List<EcProductTypeEntity> findByPowerPsGreaterThanEqual(Integer power);

        List<EcProductTypeEntity> findByFuelTypeIn(List<String> fuelTypes);

        List<EcProductTypeEntity> findByDriveSystemIn(List<String> driveSystem);


        // SQL-Befehle (welche sich nicht per JPA abbilden ließen) zur Datenselektion des Filters

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
