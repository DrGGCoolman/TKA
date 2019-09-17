
package de.gowlr.allcar.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import de.gowlr.allcar.entities.EcProductTypeEntity;;

@Repository
public interface ProductTypeRepository extends CrudRepository<EcProductTypeEntity, Long> {

    @Query("select distinct s from EcProductTypeEntity s join EcBrandEntity b where s.model like :model")
    List<EcProductTypeEntity> findByModel(String model);
}