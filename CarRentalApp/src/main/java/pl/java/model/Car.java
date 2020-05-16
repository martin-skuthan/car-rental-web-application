package pl.java.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import pl.java.model.enums.Transmission;
import pl.java.model.enums.TypeOfCar;

@Entity
@Inheritance
@DiscriminatorColumn(discriminatorType = DiscriminatorType.STRING,name = "typeOfCar")
@Table(name = "Car")
@NamedQueries({
	@NamedQuery(name = "Car.readAllPassengerCars", query = "SELECT c FROM Car c WHERE TYPE(c) = PassengerCar"),
	@NamedQuery(name = "Car.readAllLightCommercialCars", query = "SELECT c FROM Car c WHERE TYPE(c) = LightCommercialCar"),
	@NamedQuery(name = "Car.deleteCarByRegistrationNumber", query = "DELETE FROM Car c WHERE c.registrationNumber = :registrationNumber"),
	@NamedQuery(name = "Car.readCarByRegistrationNumber", query = "SELECT c FROM Car c WHERE c.registrationNumber = :registrationNumber")
})
public abstract class Car implements Serializable {
	private static final long serialVersionUID = 9171676490784870223L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "car_id", nullable = false)
	private Long id;
	@Column(nullable = false)
	private String registrationNumber;
    private String brand;
    private String model;
    private int seats;
    private boolean airConditioning;
    private Transmission transmission;
    private Customer user;
    
    
    public Car() {}
    
    public Car(String registrationNumber, String brand, String model,int seats, boolean airConditioning, Transmission transmission,
    		   Customer user) {
    	this.registrationNumber = registrationNumber;
    	this.brand = brand;
    	this.model = model;
    	this.seats = seats;
    	this.airConditioning = airConditioning;
    	this.transmission = transmission;
    	this.user = user;
    }

	public String getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public boolean isAirConditioning() {
		return airConditioning;
	}

	public void setAirConditioning(boolean airConditioning) {
		this.airConditioning = airConditioning;
	}

	public Transmission getTransmission() {
		return transmission;
	}

	public void setTransmission(Transmission transmission) {
		this.transmission = transmission;
	}

	public Customer getUser() {
		return user;
	}

	public void setUser(Customer user) {
		this.user = user;
	}
	
	@Transient
	public abstract TypeOfCar getTypeOfCar();
	
	@Override
	public String toString() {
		return brand + " " + model + ", with registration number: "  + registrationNumber;
	}
}
