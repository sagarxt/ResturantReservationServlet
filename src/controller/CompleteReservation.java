package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;

@WebServlet("/CompleteReservation")
public class CompleteReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CompleteReservation() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
	
		if(new ReservationDAO().completeReservation(reservationId)) {
			//Redirect to successful
		}else {
			//show message failed
		}
	}

}
