package vn.hkd.tour.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "role")
public class Roles {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToMany(mappedBy = "roles")
    private Set<Users> users = new HashSet<>();

    public Roles() {
    }

    public Roles(String name) {
        this.name = name;
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

    public Set<Users> getUsers() {
        return users;
    }

    public void setUsers(Set<Users> users) {
        this.users = users;
    }

    public void addUsers(Users users){
        getUsers().add(users);
        users.getRoles().add(this);
    }

    public void removeUsers(Users users){
        getUsers().add(users);
        users.getRoles().remove(this);
    }

    @Override
    public int hashCode() {
        final int prime = 39;
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
        Users other = (Users) obj;
        if (id != other.getId())
            return false;
        return true;
    }

}
