package com.bluemapletech.TicketReservation.Models;

public class Book {

	
	String timing;
	
	public String getTiming() {
		return timing;
	}

	public void setTiming(String timing) {
		this.timing = timing;
	}

	@Override
	public String toString() {
		return "Book [" +timing + "]";
	}

}
