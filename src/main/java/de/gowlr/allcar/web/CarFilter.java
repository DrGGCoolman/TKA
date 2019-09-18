package de.gowlr.allcar.web;

import java.util.ArrayList;
import java.util.List;

import de.gowlr.allcar.repositories.BrandRepository;
import lombok.Getter;
import lombok.Setter;

public class CarFilter {

    @Getter
    @Setter
    private List<String> Category;
    @Getter
    @Setter
    private List<String> Brand;
    @Getter
    @Setter
    private List<String> Transmission;
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
    private List<String> DriveSystem;
    @Getter
    @Setter
    private List<String> Fuel;
    @Getter
    @Setter
    private int DriverAgeMin;

    public CarFilter() {
        this.Category = new ArrayList<String>();
        this.Category.add("test");
    }

}