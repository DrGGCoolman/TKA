package de.gowlr.allcar.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "ec_role", schema = "public", catalog = "ec")
public class EcRoleEntity {
    private Integer id;
    private String roleTitle;

    @Id
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "role_title", nullable = false, length = -1)
    public String getRoleTitle() {
        return roleTitle;
    }

    public void setRoleTitle(String roleTitle) {
        this.roleTitle = roleTitle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EcRoleEntity that = (EcRoleEntity) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(roleTitle, that.roleTitle);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, roleTitle);
    }
}
