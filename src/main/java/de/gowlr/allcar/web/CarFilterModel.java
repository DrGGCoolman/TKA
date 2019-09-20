package de.gowlr.allcar.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import de.gowlr.allcar.entities.EcBrandEntity;
import de.gowlr.allcar.repositories.BrandRepository;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

public class CarFilterModel {

    @Getter
    @Setter
    private List<String> Categorys;
    @Getter
    @Setter
    private Iterable<EcBrandEntity> Brands;
    @Getter
    @Setter
    private List<String> Transmissions;
    @Getter
    @Setter
    private int YearFrom;
    @Getter
    @Setter
    private int YearTo;
    @Getter
    @Setter
    private int PowerMin;
    @Getter
    @Setter
    private List<String> DriveSystems;
    @Getter
    @Setter
    private List<String> Fuels;
    @Getter
    @Setter
    private int DriverAgeMin;

    @Autowired
    private BrandRepository brandRepository;

}