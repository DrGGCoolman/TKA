package de.gowlr.allcar.web;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.mvc.condition.ProducesRequestCondition;

import de.gowlr.allcar.entities.*;
import de.gowlr.allcar.repositories.BrandRepository;
import de.gowlr.allcar.repositories.CategoryRepository;
import de.gowlr.allcar.repositories.ProductTypeRepository;
import lombok.Getter;
import lombok.Setter;

public class CarFilterModel {

    @Getter

    private List<EcCategoryEntity> Categories;
    @Getter

    private Iterable<EcBrandEntity> Brands;
    @Getter

    private List<String> Transmissions;
    @Getter

    private int YearFrom;
    @Getter

    private int YearTo;
    @Getter

    private int PowerMin;
    @Getter

    private List<String> DriveSystems;
    @Getter

    private List<String> Fuels;
    @Getter

    private List<Integer> DriverAges;

    @Autowired
    private BrandRepository brandRepository;
    @Autowired
    private CategoryRepository catRepository;
    @Autowired
    private ProductTypeRepository productTypeRepository;

    @PostConstruct
    private void init() {
        this.Categories = catRepository.findAll();
        this.Brands = brandRepository.findAll();
        this.Fuels = productTypeRepository.findDistinctFuels();
        this.Transmissions = productTypeRepository.findDistinctTransmissions();
        this.DriveSystems = productTypeRepository.findDistinctDirveSystems();
        this.DriverAges = productTypeRepository.findDistinctDriverAges();
        this.YearFrom = productTypeRepository.findMinYear();
        this.YearTo = productTypeRepository.findMaxYear();
    }

}