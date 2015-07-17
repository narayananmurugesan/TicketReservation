package com.bluemapletech.TicketReservation.Services;

import java.util.List;

import com.bluemapletech.TicketReservation.Models.Book;
import com.bluemapletech.TicketReservation.Models.Login;
import com.bluemapletech.TicketReservation.Models.Movie;
import com.bluemapletech.TicketReservation.Models.Register;

public interface RegisterServiceInterface {

	public Register getRegisterData(Register reg);

	public Login getLogin(Login login);

	public Book preBooking(Book book);

	public Movie movieTable(Movie movie);

}
