package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ReservationDAO;
import model.Reservation;

@WebServlet("/bookingHistory")
public class BookingHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public BookingHistory() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");
		
		ArrayList<Reservation> reservations = new ReservationDAO().getReservationsByUserId(userId);
		request.setAttribute("reservations", reservations);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("bookinghistory.jsp");
		dispatcher.forward(request, response);
	}

}
