package de.gowlr.allcar.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "ec_pictures", schema = "public", catalog = "exclusive cars")
public class EcPicturesEntity {
    private int id;
    private String title;
    private String filePath;

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
    @Column(name = "file_path")
    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EcPicturesEntity that = (EcPicturesEntity) o;
        return id == that.id &&
                Objects.equals(title, that.title) &&
                Objects.equals(filePath, that.filePath);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, title, filePath);
    }
}
