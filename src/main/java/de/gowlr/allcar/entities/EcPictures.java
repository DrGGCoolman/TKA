package de.gowlr.allcar.entities;



public class EcPictures {

  private long Id;
  private String title;
  private String filePath;
  private long productId;


  public long getPictureId() {
    return Id;
  }

  public void setPictureId(long pictureId) {
    this.Id = pictureId;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getFilePath() {
    return filePath;
  }

  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }


  public long getProductId() {
    return productId;
  }

  public void setProductId(long productId) {
    this.productId = productId;
  }

}
