package vn.hkd.touronline.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @NotEmpty
    @Length(min = 100)
    @Column(name = "name")
    private String name;

    @NotEmpty
    @Email
    @Column(name = "email")
    private String email;

    @NotEmpty
    @Length(min = 6)
    @Column(name = "pwd")
    private String passWord;

    @Transient
    private String comfirmPassWord;

    @Column(name = "phone_no")
    private String phone;

    @Column(name = "gender")
    private String gender;

    @Column(name = "address")
    private String address;

    @ManyToMany
    @JoinTable( name = "users_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Roles> roles = new HashSet<>();

    public Users() {

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getComfirmPassWord() {
        return comfirmPassWord;
    }

    public void setComfirmPassWord(String comfirmPassWord) {
        this.comfirmPassWord = comfirmPassWord;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Set<Roles> getRoles() {
        return roles;
    }

    public void setRoles(Set<Roles> roles) {
        this.roles = roles;
    }

    public void addRoles(Roles roles){
        getRoles().add(roles);
        roles.getUsers().add(this);
    }

    public void removeRoles(Roles roles){
        getRoles().remove(roles);
        roles.getUsers().remove(this);
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
