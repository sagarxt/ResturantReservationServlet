package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;

@WebServlet("/completeReservation")
public class CompleteReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CompleteReservation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
	
		if(new ReservationDAO().completeReservation(reservationId)) {
			//Redirect to successful
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}else {
			//show message failed
			RequestDispatcher dispatcher = request.getRequestDispatcher("failed.jsp");
			dispatcher.forward(request, response);
		}
	}

}
