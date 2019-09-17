package de.gowlr.allcar.web;

/*
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.repository.CrudRepository;
import de.gowlr.allcar.entities.EcProductTypeEntity;


@Data
public class Filter implements Specification<EcProductTypeEntity> {
    private String brandTitle;
    private String model;
    private String variant;


    @Override
    public EcProductTypeEntity toPredicate(Root<EcProductTypeEntity> root, CriteriaQuery<?> query, CriteriaBuilder builder) {
        List<EcProductTypeEntity> predicates = new ArrayList<>();
        if (brandTitle != null) predicates.add(builder.like(builder.upper(root.get("brand")), "%" + brandTitle.toUpperCase() + "%"));
        if (model != null) predicates.add(builder.greaterThanOrEqualTo(root.get("model"), model));
        if (variant != null) predicates.add(builder.lessThanOrEqualTo(root.get("variant"), variant));
        return builder.and(predicates.toArray(new EcProductTypeEntity[0]));
    }
}

*/