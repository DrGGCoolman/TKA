package de.gowlr.allcar.web;

import lombok.Getter;
import lombok.Setter;

public class CarFilter {

    @Getter
    @Setter
    private String[] Category;
    @Getter
    @Setter
    private String[] Brand;
    @Getter
    @Setter
    private String[] Transmission;
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
    private String[] DriveSystem;
    @Getter
    @Setter
    private String[] Fuel;
    @Getter
    @Setter
    private int DriverAgeMin;

    public CarFilter() {

    }

}