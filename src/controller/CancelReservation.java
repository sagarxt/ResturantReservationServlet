package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;

@WebServlet("/cancelReservation")
public class CancelReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CancelReservation() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
	
		if(new ReservationDAO().cancelReservation(reservationId)) {
			//Redirect to cancellation successful
		}else {
			//show message cancellation failed
		}
	}

}
