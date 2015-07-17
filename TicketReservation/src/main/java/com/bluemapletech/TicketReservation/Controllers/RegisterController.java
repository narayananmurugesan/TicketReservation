package com.bluemapletech.TicketReservation.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bluemapletech.TicketReservation.DAO.RegisterDAO;
import com.bluemapletech.TicketReservation.Models.Book;
import com.bluemapletech.TicketReservation.Models.Login;
import com.bluemapletech.TicketReservation.Models.Movie;
import com.bluemapletech.TicketReservation.Models.Register;
import com.bluemapletech.TicketReservation.Services.RegisterService;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

	@Autowired
	RegisterService registerService;

	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String RegisterMethod(@ModelAttribute Register register) {

		registerService.getRegisterData(register);
		System.out.println("Checking Controller's comes here");
		return "Login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String getLogin(@ModelAttribute Login login, Movie movie) {
		System.out.println("login");
		registerService.getLogin(login);

		if (login.isMatch()) {

			return "redirect:/register/movie";

		} else {
			return "Login";
		}

	}

	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public ModelAndView getBook(@ModelAttribute Book book) {

		registerService.preBooking(book);
		List<String> lists;
		lists = RegisterDAO.list;
		ModelAndView model = new ModelAndView();
		model.addObject("movies", lists);

		model.setViewName("BookPage");
		System.out.println(" returned value:" + lists);
		return model;
	}

	@RequestMapping(value = "/movie", method = RequestMethod.POST)
	public Movie movieTable(Movie movie) {
		registerService.movieTable(movie);
		List<String> lists;
		lists = RegisterDAO.lists;
		ModelAndView model = new ModelAndView();
		model.addObject("movies", lists);
		model.setViewName("MoviePage");
		System.out.println(movie);
		return movie;
	}

}
