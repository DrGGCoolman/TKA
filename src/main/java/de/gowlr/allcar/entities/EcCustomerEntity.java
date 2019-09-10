package de.gowlr.allcar.entities;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
@Table(name = "ec_customer", schema = "public", catalog = "exclusive cars")
public class EcCustomerEntity {
    private int id;
    private String title;
    private Date birth;
    private String street;
    private int houseNumber;
    private int postCode;
    private String city;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "birth")
    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "street")
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Basic
    @Column(name = "house_number")
    public int getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(int houseNumber) {
        this.houseNumber = houseNumber;
    }

    @Basic
    @Column(name = "post_code")
    public int getPostCode() {
        return postCode;
    }

    public void setPostCode(int postCode) {
        this.postCode = postCode;
    }

    @Basic
    @Column(name = "city")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        EcCustomerEntity that = (EcCustomerEntity) o;
        return houseNumber == that.houseNumber && postCode == that.postCode && Objects.equals(title, that.title)
                && Objects.equals(birth, that.birth) && Objects.equals(street, that.street)
                && Objects.equals(city, that.city);
    }

    @Override
    public int hashCode() {
        return Objects.hash(title, birth, street, houseNumber, postCode, city);
    }

}
