package com.bluemapletech.TicketReservation.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bluemapletech.TicketReservation.Models.Book;
import com.bluemapletech.TicketReservation.Models.Login;
import com.bluemapletech.TicketReservation.Models.Movie;
import com.bluemapletech.TicketReservation.Models.Register;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@Repository
public class RegisterDAO implements RegisterDAOImplement {

	public static List<String> list = new ArrayList<String>();
	public static List<String> lists = new ArrayList<String>();

	@Autowired
	private static DataSource dataSource;

	@Autowired
	public void setDatasource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public Register getRegisterData(Register reg) {

		String sql = "INSERT INTO user (username, password, temp_pass,first_name,last_name,email_address,address,user_role) VALUES (?, ?, ?,?,?,?,?,?)";
		java.sql.Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = (PreparedStatement) conn
					.prepareStatement(sql);

			ps.setString(1, reg.getUsername());
			ps.setString(2, reg.getPassword());
			ps.setString(3, reg.getConfirmPassword());
			ps.setString(4, reg.getFirstName());
			ps.setString(5, reg.getLastName());
			ps.setString(6, reg.getEmailID());
			ps.setString(7, reg.getAddress());
			ps.setString(8, reg.getUserRole());

			ps.executeUpdate();
			System.out.println(ps);
			ps.close();

		} catch (SQLException e) {
			System.out.println(e.getLocalizedMessage());
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}

		return reg;

	}

	public Login getLogin(Login login) {

		System.out.println(login);

		String sql = "SELECT * FROM user WHERE username='"
				+ login.getUsername() + "' AND password='"
				+ login.getPassword() + "'";
		java.sql.Connection conn;
		ResultSet rs = null;
		try {
			System.out.println("entry");
			conn = dataSource.getConnection();
			PreparedStatement ps = (PreparedStatement) conn
					.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			System.out.println(rs.toString());
			if (rs.next()) {
				if (rs.getString("username").equals(login.getUsername())
						&& rs.getString("password").equals(login.getPassword())) {
					System.out.println("Yes");
					login.setMatch(true);
				} else {
					login.setMatch(false);
					System.out.println("No");
				}
			}

		} catch (SQLException ex) {
			System.out.println(ex.getLocalizedMessage());
			throw new RuntimeException(ex);

		}
		return login;
	}

	public Movie movieTable(Movie movie) {
		String sql = "SELECT movie_id,movie_name,release_date,no_of_shows FROM movie";
		List<String> movies = new ArrayList<String>();
		Connection conn = null;
		ResultSet rs = null;
		try {

			conn = (Connection) dataSource.getConnection();
			PreparedStatement ps = (PreparedStatement) conn
					.prepareStatement(sql);

			rs = ps.executeQuery(sql);

			while (rs.next()) {

				String move_id = rs.getString("movie_id");
				String movie_name = rs.getString("movie_name");
				String release_date = rs.getString("release_date");
				String no_of_shows = rs.getString("no_of_shows");

				lists.add(move_id);
				lists.add(movie_name);
				lists.add(release_date);
				lists.add(no_of_shows);
				return movie;
			}

			ps.close();
			rs.close();

		} catch (SQLException ex) {
			System.out.println(ex.getLocalizedMessage());
			throw new RuntimeException(ex);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}

		System.out.println("movies list" + lists);
		return movie;
	}

	public Book preBooking(Book book) {

		String sql1 = "SELECT * FROM timings WHERE timings";
		Connection conn = null;
		ResultSet rs = null;

		try {

			conn = (Connection) dataSource.getConnection();

			PreparedStatement ps1 = (PreparedStatement) conn
					.prepareStatement(sql1);

			rs = ps1.executeQuery(sql1);
			while (rs.next()) {
				String timing = rs.getString("timings");
				list.add(timing);

			}

			ps1.close();

			rs.close();

		} catch (SQLException ex) {
			System.out.println(ex.getLocalizedMessage());
			throw new RuntimeException(ex);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		return (Book) book;
	}

}
