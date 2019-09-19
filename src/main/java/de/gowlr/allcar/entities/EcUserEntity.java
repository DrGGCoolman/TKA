package de.gowlr.allcar.entities;

import javax.persistence.*;

import lombok.AllArgsConstructor;

import java.sql.Date;
import java.util.Objects;

@Entity
@AllArgsConstructor
@Table(name = "ec_user", schema = "public", catalog = "ec")
public class EcUserEntity {
    private Integer id;
    private String name;
    private String firstname;
    private String gender;
    private String Email;
    private String password;
    private String title;
    private Date birth;
    private String street;
    private Integer houseNumber;
    private Integer postCode;
    private String city;
    private EcRoleEntity ecRoleByRoleId;

    @Id
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = -1)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "firstname", nullable = false, length = -1)
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    @Basic
    @Column(name = "gender", nullable = true, length = -1)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "e_mail", nullable = false, length = -1)
    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 255)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "title", nullable = true, length = -1)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "birth", nullable = false)
    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "street", nullable = false, length = -1)
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Basic
    @Column(name = "house_number", nullable = false)
    public Integer getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(Integer houseNumber) {
        this.houseNumber = houseNumber;
    }

    @Basic
    @Column(name = "post_code", nullable = false)
    public Integer getPostCode() {
        return postCode;
    }

    public void setPostCode(Integer postCode) {
        this.postCode = postCode;
    }

    @Basic
    @Column(name = "city", nullable = false, length = -1)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EcUserEntity that = (EcUserEntity) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(name, that.name) &&
                Objects.equals(firstname, that.firstname) &&
                Objects.equals(gender, that.gender) &&
                Objects.equals(Email, that.Email) &&
                Objects.equals(password, that.password) &&
                Objects.equals(title, that.title) &&
                Objects.equals(birth, that.birth) &&
                Objects.equals(street, that.street) &&
                Objects.equals(houseNumber, that.houseNumber) &&
                Objects.equals(postCode, that.postCode) &&
                Objects.equals(city, that.city);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, firstname, gender, Email, password, title, birth, street, houseNumber, postCode, city);
    }

    @ManyToOne
    @JoinColumn(name = "role_id", referencedColumnName = "id", nullable = false)
    public EcRoleEntity getEcRoleByRoleId() {
        return ecRoleByRoleId;
    }

    public void setEcRoleByRoleId(EcRoleEntity ecRoleByRoleId) {
        this.ecRoleByRoleId = ecRoleByRoleId;
    }
}
