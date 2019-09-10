package de.gowlr.allcar.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "ec_product_entity", schema = "public", catalog = "exclusive cars")
public class EcProductEntityEntity {
    private int id;
    private String bodyColor;
    private String upholstery;
    private Boolean massageSeats;
    private Boolean displaysRear;
    private double price200;
    private double price500;
    private double price1000;
    private String availibilityWeekdays;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "body_color")
    public String getBodyColor() {
        return bodyColor;
    }

    public void setBodyColor(String bodyColor) {
        this.bodyColor = bodyColor;
    }

    @Basic
    @Column(name = "upholstery")
    public String getUpholstery() {
        return upholstery;
    }

    public void setUpholstery(String upholstery) {
        this.upholstery = upholstery;
    }

    @Basic
    @Column(name = "massage_seats")
    public Boolean getMassageSeats() {
        return massageSeats;
    }

    public void setMassageSeats(Boolean massageSeats) {
        this.massageSeats = massageSeats;
    }

    @Basic
    @Column(name = "displays_rear")
    public Boolean getDisplaysRear() {
        return displaysRear;
    }

    public void setDisplaysRear(Boolean displaysRear) {
        this.displaysRear = displaysRear;
    }

    @Basic
    @Column(name = "price_200")
    public double getPrice200() {
        return price200;
    }

    public void setPrice200(double price200) {
        this.price200 = price200;
    }

    @Basic
    @Column(name = "price_500")
    public double getPrice500() {
        return price500;
    }

    public void setPrice500(double price500) {
        this.price500 = price500;
    }

    @Basic
    @Column(name = "price_1000")
    public double getPrice1000() {
        return price1000;
    }

    public void setPrice1000(double price1000) {
        this.price1000 = price1000;
    }

    @Basic
    @Column(name = "availibility_weekdays")
    public String getAvailibilityWeekdays() {
        return availibilityWeekdays;
    }

    public void setAvailibilityWeekdays(String availibilityWeekdays) {
        this.availibilityWeekdays = availibilityWeekdays;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EcProductEntityEntity that = (EcProductEntityEntity) o;
        return id == that.id &&
                Double.compare(that.price200, price200) == 0 &&
                Double.compare(that.price500, price500) == 0 &&
                Double.compare(that.price1000, price1000) == 0 &&
                Objects.equals(bodyColor, that.bodyColor) &&
                Objects.equals(upholstery, that.upholstery) &&
                Objects.equals(massageSeats, that.massageSeats) &&
                Objects.equals(displaysRear, that.displaysRear) &&
                Objects.equals(availibilityWeekdays, that.availibilityWeekdays);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, bodyColor, upholstery, massageSeats, displaysRear, price200, price500, price1000, availibilityWeekdays);
    }
}
