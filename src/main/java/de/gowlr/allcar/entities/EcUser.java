package de.gowlr.allcar.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

public class EcUser {

  @Id
  @GeneratedValue
  @Getter
  private long userId;
  @Getter
  @Setter
  private String name;
  @Getter
  @Setter
  private String firstname;
  @Getter
  @Setter
  private String gender;
  @Getter
  @Setter
  private String eMail;
  @Getter
  @Setter
  private String password;

}
