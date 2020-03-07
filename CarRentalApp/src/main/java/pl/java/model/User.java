package pl.java.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User implements Serializable {
	private static final long serialVersionUID = 3943117829271152503L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id", nullable = false)
	private Long id;
	private String firstName;
	private String lastName;
	@Column(nullable = false, length = 13, unique = true)
	private String pesel;
	
	public User() {}
	
	public User(String firstName, String lastName, String pesel) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.pesel = pesel;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getPesel() {
		return pesel;
	}
	
	public void setPesel(String pesel) {
		this.pesel = pesel;
	}	
}
