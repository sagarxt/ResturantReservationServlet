package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ReservationDAO;
import dao.TableDAO;
import model.Reservation;
import model.Table;

@WebServlet("/newReservation")
public class NewReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NewReservation() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		// Generate random userId
		Random random = new Random();
		int reservationId = random.nextInt();

		LocalDate date = LocalDate.parse(request.getParameter("date"));
		LocalTime time = LocalTime.parse(request.getParameter("time"));
		int partySize = Integer.parseInt(request.getParameter("partySize"));
		String customerName = request.getParameter("customerName");
		String phoneNumber = request.getParameter("phoneNumber");

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		int tableId;

		ArrayList<Table> tables = new TableDAO().getTablesByCapacity(partySize);
		Iterator<Table> iterator = tables.iterator();
		if (iterator.hasNext()) {
			// Give a tableId of selected capacity
			Table table = iterator.next();
			tableId = table.getTableId();

			//Bind data to Reservation object
			Reservation reservation = new Reservation();
			reservation.setReservationId(reservationId);
			reservation.setDate(date);
			reservation.setTime(time);
			reservation.setPartySize(partySize);
			reservation.setCustomerName(customerName);
			reservation.setPhoneNumber(phoneNumber);
			reservation.setTableId(tableId);
			reservation.setUserId(userId);
			reservation.setStatus("active");
			
			if(new ReservationDAO().newReservation(reservation)) {
				//Reservation Successful message
			}else {
				//Reservation failed message
			}
		} else {
			// No table available on selected capacity
		}
	}

}
