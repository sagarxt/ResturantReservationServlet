package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;
import model.Reservation;

@WebServlet("/allReservations")
public class AllReservations extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AllReservations() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		ArrayList<Reservation> reservations = new ReservationDAO().allReservations();
		request.setAttribute("reservations", reservations);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("allreservations.jsp");
		dispatcher.forward(request, response);
	}

}
