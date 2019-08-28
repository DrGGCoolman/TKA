package de.gowlr.allcar.entities;



public class EcProductEntity {

  private String bodyColor;
  private String upholstery;
  private String massageSeats;
  private String displaysRear;
  private double price;
  private String availibilityWeekdays;
  private long productId;


  public String getBodyColor() {
    return bodyColor;
  }

  public void setBodyColor(String bodyColor) {
    this.bodyColor = bodyColor;
  }


  public String getUpholstery() {
    return upholstery;
  }

  public void setUpholstery(String upholstery) {
    this.upholstery = upholstery;
  }


  public String getMassageSeats() {
    return massageSeats;
  }

  public void setMassageSeats(String massageSeats) {
    this.massageSeats = massageSeats;
  }


  public String getDisplaysRear() {
    return displaysRear;
  }

  public void setDisplaysRear(String displaysRear) {
    this.displaysRear = displaysRear;
  }


  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }


  public String getAvailibilityWeekdays() {
    return availibilityWeekdays;
  }

  public void setAvailibilityWeekdays(String availibilityWeekdays) {
    this.availibilityWeekdays = availibilityWeekdays;
  }


  public long getProductId() {
    return productId;
  }

  public void setProductId(long productId) {
    this.productId = productId;
  }

}
