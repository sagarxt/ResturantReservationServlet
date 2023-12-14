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

@WebServlet("/pendingReservations")
public class PendingReservations extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PendingReservations() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		ArrayList<Reservation> reservations = new ReservationDAO().getPendingReservations();
		request.setAttribute("reservations", reservations);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("pendingreservations.jsp");
		dispatcher.forward(request, response);
	}

}
