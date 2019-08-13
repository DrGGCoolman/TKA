package de.gowlr.allcar.entities;



public class EcCustomer {

  private String title;
  private java.sql.Date birth;
  private long userId;
  private String street;
  private long houseNumber;
  private long postCode;
  private String city;


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public java.sql.Date getBirth() {
    return birth;
  }

  public void setBirth(java.sql.Date birth) {
    this.birth = birth;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }


  public long getHouseNumber() {
    return houseNumber;
  }

  public void setHouseNumber(long houseNumber) {
    this.houseNumber = houseNumber;
  }


  public long getPostCode() {
    return postCode;
  }

  public void setPostCode(long postCode) {
    this.postCode = postCode;
  }


  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

}
