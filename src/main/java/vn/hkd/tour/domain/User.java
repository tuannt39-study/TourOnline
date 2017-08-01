package vn.hkd.tour.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.validator.constraints.*;

@Entity
@Table(name = "user")
public class User implements Serializable {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotEmpty
    @Column(name = "name")
    private String name;

    @NotEmpty
    @Email
    @Column(name = "email")
    private String email;

    @NotEmpty
    @Length(min = 6)
    @Column(name = "password")
    private String password;
    
    @Transient
    @NotEmpty
    private String confirmPassword;

    @NotEmpty
    @Length(min = 10)
    @Column(name = "phone_no", nullable = false)
    private String phone;

    @Column(name = "gender")
    private String gender;

    @Column(name = "address")
    private String address;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_role", 
	    joinColumns = { @JoinColumn(name = "user_id") }, 
	    inverseJoinColumns = { @JoinColumn(name = "role_id") }
    )
    private Set<Role> roles = new HashSet<>();
    
    public User() {
    	roles.add(new Role("ROLE_MEMBER"));
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
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

    public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	public boolean isAdmin() {
		for (Role role : roles) {
			if (role.getName().equals("ROLE_ADMIN")) {
				return true;
			}
		}
		return false;
	}

}
