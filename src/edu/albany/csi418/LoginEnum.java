package edu.albany.csi418;

/*
 * This enumeration contains some commonly referenced values when connecting to the 
 * relevant MySQL database. This also allows for ease of change when pushing to the cloud
 * if need be.
 */
public enum LoginEnum {
	hostname("jdbc:mysql://localhost:3306/QUIZ"),
	username("eclipse"),
	password("csi2019");
	
	private final String value;
	
	private LoginEnum(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}
