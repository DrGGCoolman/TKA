package de.gowlr.allcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class ProductType {

    @Override
    public String toString(){
        return this.name;
    }

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "mobile")
    private String mobile;

    private transient String confirmPassword;

    // Getters and Setters
}