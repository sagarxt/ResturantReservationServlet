package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

import javax.servlet.RequestDispatcher;
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
		int reservationId = random.nextInt(Integer.MAX_VALUE);

		String stringDate = request.getParameter("date");
		LocalDate date = LocalDate.parse(stringDate);

		String stringTime = request.getParameter("time");
		LocalTime time = LocalTime.parse(stringTime);

		int partySize = Integer.parseInt(request.getParameter("partySize"));
		String customerName = request.getParameter("customerName");
		String phoneNumber = request.getParameter("phoneNumber");

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		int tableId;

//		System.out.println("PartySize : " + partySize);
//		ArrayList<Table> tables = new TableDAO().getTablesByCapacity(partySize);
//		Iterator<Table> iterator = tables.iterator();

		tableId = new TableDAO().getAvailableTable(partySize);
		Reservation reservation = new Reservation();

		// Bind data to Reservation object
		reservation.setReservationId(reservationId);
		reservation.setDate(date);
		reservation.setTime(time);
		reservation.setPartySize(partySize);
		reservation.setCustomerName(customerName);
		reservation.setPhoneNumber(phoneNumber);
		reservation.setTableId(tableId);
		reservation.setUserId(userId);
		if (tableId != -1) {
			// Give a tableId of selected capacity
			reservation.setStatus("active");
			new TableDAO().bookTable(tableId);

			if (new ReservationDAO().newReservation(reservation)) {
				// Reservation Successful message
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("reservationsuccessful.jsp?reservationId=" + reservationId);
				dispatcher.forward(request, response);

			} else {
				// Reservation failed message
				RequestDispatcher dispatcher = request.getRequestDispatcher("reservationfailed.jsp?");
				dispatcher.forward(request, response);
			}
		} else {
			// No table available on selected capacity pending
			reservation.setStatus("pending");
			new ReservationDAO().newReservation(reservation);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("reservationpending.jsp?reservationId=" + reservationId);
			dispatcher.forward(request, response);
		}
	}

}
