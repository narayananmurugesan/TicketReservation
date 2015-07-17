package com.bluemapletech.TicketReservation.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bluemapletech.TicketReservation.DAO.RegisterDAO;
import com.bluemapletech.TicketReservation.Models.Book;
import com.bluemapletech.TicketReservation.Models.Login;
import com.bluemapletech.TicketReservation.Models.Movie;
import com.bluemapletech.TicketReservation.Models.Register;

@Service
public class RegisterService implements RegisterServiceInterface {

	@Autowired
	RegisterDAO dao;
	
	public Register getRegisterData(Register reg) {
		// TODO Auto-generated method stub
		
		return dao.getRegisterData(reg);
	}
	
	public Login getLogin(Login login)
	{
		return dao.getLogin(login);
	}
	
	public Book preBooking(Book book)
	{
		return  dao.preBooking(book);
	}
	
	public Movie movieTable(Movie movie){
		return dao.movieTable(movie);
	}

	
	


}
