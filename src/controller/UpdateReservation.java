package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Iterator;

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

@WebServlet("/updateReservation")
public class UpdateReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateReservation() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
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
			
			reservation.setStatus("active");
			//Book the selected table
			new TableDAO().bookTable(tableId);
			//Free the previous table
			int oldTableId = new ReservationDAO().getReservationbyId(reservationId).getTableId();
			new TableDAO().freeTable(oldTableId);

			if (new ReservationDAO().updateReservation(reservationId, reservation)) {
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
			new ReservationDAO().updateReservation(reservationId, reservation);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("reservationpending.jsp?reservationId=" + reservationId);
			dispatcher.forward(request, response);
		}

	}

}
