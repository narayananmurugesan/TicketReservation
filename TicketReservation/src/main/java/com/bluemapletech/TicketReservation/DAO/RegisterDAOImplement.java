package com.bluemapletech.TicketReservation.DAO;

import java.util.List;

import com.bluemapletech.TicketReservation.Models.Book;
import com.bluemapletech.TicketReservation.Models.Login;
import com.bluemapletech.TicketReservation.Models.Movie;
import com.bluemapletech.TicketReservation.Models.Register;

public interface RegisterDAOImplement {

	public Register getRegisterData(Register reg);

	public Login getLogin(Login login);

	public Book preBooking(Book book);

	public Movie movieTable(Movie movie);

}
