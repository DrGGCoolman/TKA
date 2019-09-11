package de.gowlr.allcar.entities;

import java.util.Objects;

import javax.persistence.*;
import javax.validation.constraints.*;



@Entity
@Table(name = "ec_product_type", schema = "public", catalog = "exclusive cars")
public class EcProductTypeEntity {

    // TODO: Validierung anpassen/
    private int id;
    @NotBlank(message = "Bitte aufüllen!")
    private String brand;
    @NotBlank(message = "Bitte aufüllen!")
    private String model;
    @NotBlank(message = "Bitte aufüllen!")
    private String variant;

    private String gearingType;
    private int age;
    private double weight;
    private int power;
    private String engine;
    private int cubicCapacity;
    private double nm;
    private String driveSystem;
    private String fuelType;
    private double zeroToHundred;
    private int seats;
    private int luggageCompartment;
    private int doors;
    private boolean addDriver;
    private int minimumAge;
    private EcCategoryEntity ecCategoryByCategoryId;

    public EcProductTypeEntity() {
    }

    public EcProductTypeEntity(String brand, String model, String variant) {
        this.brand = brand;
        this.model = model;
        this.variant = variant;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "brand")
    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Basic
    @Column(name = "model")
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Basic
    @Column(name = "variant")
    public String getVariant() {
        return variant;
    }

    public void setVariant(String variant) {
        this.variant = variant;
    }

    @Basic
    @Column(name = "gearing_type")
    public String getGearingType() {
        return gearingType;
    }

    public void setGearingType(String gearingType) {
        this.gearingType = gearingType;
    }

    @Basic
    @Column(name = "age")
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Basic
    @Column(name = "weight")
    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    @Basic
    @Column(name = "power")
    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    @Basic
    @Column(name = "engine")
    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    @Basic
    @Column(name = "cubic_capacity")
    public int getCubicCapacity() {
        return cubicCapacity;
    }

    public void setCubicCapacity(int cubicCapacity) {
        this.cubicCapacity = cubicCapacity;
    }

    @Basic
    @Column(name = "nm")
    public double getNm() {
        return nm;
    }

    public void setNm(double nm) {
        this.nm = nm;
    }

    @Basic
    @Column(name = "drive_system")
    public String getDriveSystem() {
        return driveSystem;
    }

    public void setDriveSystem(String driveSystem) {
        this.driveSystem = driveSystem;
    }

    @Basic
    @Column(name = "fuel_type")
    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    @Basic
    @Column(name = "zero_to_hundred")
    public double getZeroToHundred() {
        return zeroToHundred;
    }

    public void setZeroToHundred(double zeroToHundred) {
        this.zeroToHundred = zeroToHundred;
    }

    @Basic
    @Column(name = "seats")
    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Basic
    @Column(name = "luggage_compartment")
    public int getLuggageCompartment() {
        return luggageCompartment;
    }

    public void setLuggageCompartment(int luggageCompartment) {
        this.luggageCompartment = luggageCompartment;
    }

    @Basic
    @Column(name = "doors")
    public int getDoors() {
        return doors;
    }

    public void setDoors(int doors) {
        this.doors = doors;
    }

    @Basic
    @Column(name = "add_driver")
    public boolean isAddDriver() {
        return addDriver;
    }

    public void setAddDriver(boolean addDriver) {
        this.addDriver = addDriver;
    }

    @Basic
    @Column(name = "minimum_age")
    public int getMinimumAge() {
        return minimumAge;
    }

    public void setMinimumAge(int minimumAge) {
        this.minimumAge = minimumAge;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        EcProductTypeEntity that = (EcProductTypeEntity) o;
        return id == that.id && age == that.age && Double.compare(that.weight, weight) == 0 && power == that.power
                && cubicCapacity == that.cubicCapacity && Double.compare(that.nm, nm) == 0
                && Double.compare(that.zeroToHundred, zeroToHundred) == 0 && seats == that.seats
                && luggageCompartment == that.luggageCompartment && doors == that.doors && addDriver == that.addDriver
                && minimumAge == that.minimumAge && Objects.equals(brand, that.brand)
                && Objects.equals(model, that.model) && Objects.equals(variant, that.variant)
                && Objects.equals(gearingType, that.gearingType) && Objects.equals(engine, that.engine)
                && Objects.equals(driveSystem, that.driveSystem) && Objects.equals(fuelType, that.fuelType);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, brand, model, variant, gearingType, age, weight, power, engine, cubicCapacity, nm,
                driveSystem, fuelType, zeroToHundred, seats, luggageCompartment, doors, addDriver, minimumAge);
    }

    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
    public EcCategoryEntity getEcCategoryByCategoryId() {
        return ecCategoryByCategoryId;
    }

    public void setEcCategoryByCategoryId(EcCategoryEntity ecCategoryByCategoryId) {
        this.ecCategoryByCategoryId = ecCategoryByCategoryId;
    }
}
