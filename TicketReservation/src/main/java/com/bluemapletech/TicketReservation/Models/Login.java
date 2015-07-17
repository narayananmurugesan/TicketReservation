package com.bluemapletech.TicketReservation.Models;

public class Login {

	String username;
	String password;
	public boolean match;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public boolean isMatch() {
		return match;
	}

	public void setMatch(boolean match) {
		this.match = match;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password
				+ ", match=" + match + "]";
	}

}
