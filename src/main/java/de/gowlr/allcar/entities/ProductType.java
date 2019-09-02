package de.gowlr.allcar.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "ec_product_type")
public class ProductType {
  @Id
  @Getter
  @Setter
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;
  @Getter
  @Setter
  private long categoryId;
  @Getter
  @Setter
  private String brand;
  @Getter
  @Setter
  private String model;
  @Getter
  @Setter
  private String variant;
  @Getter
  @Setter
  private String gearingType;
  @Getter
  @Setter
  private long age;
  @Getter
  @Setter
  private double weight;
  @Getter
  @Setter
  private long power;
  @Getter
  @Setter
  private String engine;
  @Getter
  @Setter
  private long cubicCapacity;
  @Getter
  @Setter
  private double nm;
  @Getter
  @Setter
  private String driveSystem;
  @Getter
  @Setter
  private String fuelType;
  @Getter
  @Setter
  private double zeroToHundred;
  @Getter
  @Setter
  private long seats;
  @Getter
  @Setter
  private long luggageCompartment;
  @Getter
  @Setter
  private long doors;
  @Getter
  @Setter
  private long miles;
  @Getter
  @Setter
  private String addDriver;
  @Getter
  @Setter
  private long minimumAge;
  

}
