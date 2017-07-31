package vn.hkd.tour.domain;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "product")
public class Tour implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private int id;

    @NotEmpty
    @Length(max = 500)
    @Column(name = "name", nullable = false)
    private String name;

    @NotEmpty
    @Column(name = "length")
    private String length;

    @NotEmpty
    @Column(name = "origin")
    private String origin;

    @NotEmpty
    @Length(max = 5000)
    @Column(name = "descript")
    private String descript;

    @NotEmpty
    @Column(name = "image")
    private String image;

    @NotEmpty
    @Column(name = "addition_service")
    private String service;

    @NotEmpty
    @Column(name = "approved")
    private String approved;

    @NotEmpty
    @Column(name = "promotion")
    private String promotion;

    public Tour() {
    }

    public Tour(String name) {
        this.name = name;
    }

    public Tour(String name, String length, String origin, String descript, String image, String service, String approved, String promotion) {
        this.name = name;
        this.length = length;
        this.origin = origin;
        this.descript = descript;
        this.image = image;
        this.service = service;
        this.approved = approved;
        this.promotion = promotion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getApproved() {
        return approved;
    }

    public void setApproved(String approved) {
        this.approved = approved;
    }

    public String getPromotion() {
        return promotion;
    }

    public void setPromotion(String promotion) {
        this.promotion = promotion;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Tour other = (Tour) obj;
        if (id != other.id)
            return false;
        return true;
    }
}
