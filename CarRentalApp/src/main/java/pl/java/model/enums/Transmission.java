package pl.java.model.enums;

import pl.java.exceptions.NoSuchTypeException;

public enum Transmission {
	MANUAL("manual"),
	AUTOMATIC("automatic");
	
	String description;
	
	Transmission(String description) {
		this.description = description;
	}
	
	public static Transmission getFromDescription(String description) {
		try {
			return Transmission.valueOf(description);
		}catch (IllegalArgumentException ex) {
			throw new NoSuchTypeException("There is no type:" + description);
		}
		
	}
}
