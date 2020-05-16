package pl.java.model.enums;

import pl.java.exceptions.NoSuchTypeException;

public enum TypeOfDrive {
	PETROL("petrol"),
	DIESEL("diesel"),
	HYBRID("hybrid");
	
	String description; 
	
	TypeOfDrive(String description) {
		this.description = description;
	}
	
	public static TypeOfDrive getFromDescription(String description) {
		try {
			return TypeOfDrive.valueOf(description.toUpperCase());
		}catch (IllegalArgumentException ex) {
			throw new NoSuchTypeException("There is no option:" + description);
		}
	}
	
	@Override
	public String toString() {
		return description;
	}
}
