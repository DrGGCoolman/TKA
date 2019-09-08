package de.gowlr.allcar.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ec_product_type")
public class ProductEntity {
  @Id
  @Getter
  @Setter
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;
  @Getter
  @Setter
  private String bodyColor;
  @Getter
  @Setter
  private String upholstery;
  @Getter
  @Setter
  private String massageSeats;
  @Getter
  @Setter
  private String displaysRear;
  @Getter
  @Setter
  private double price;
  @Getter
  @Setter
  private String availibilityWeekdays;
  @Getter
  @Setter
  private long productId;

}
