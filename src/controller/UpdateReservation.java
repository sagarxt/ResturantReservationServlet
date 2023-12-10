package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		LocalDate date = LocalDate.parse(request.getParameter("date"));
		LocalTime time = LocalTime.parse(request.getParameter("time"));
		int partySize = Integer.parseInt(request.getParameter("partySize"));
		String customerName = request.getParameter("customerName");
		String phoneNumber = request.getParameter("phoneNumber");

		int tableId;

		ArrayList<Table> tables = new TableDAO().getTablesByCapacity(partySize);
		Iterator<Table> iterator = tables.iterator();
		if (iterator.hasNext()) {
			// Give a tableId of selected capacity
			Table table = iterator.next();
			tableId = table.getTableId();

			Reservation reservation = new Reservation();
			reservation.setDate(date);
			reservation.setTime(time);
			reservation.setPartySize(partySize);
			reservation.setCustomerName(customerName);
			reservation.setPhoneNumber(phoneNumber);
			reservation.setTableId(tableId);
			
			if(new ReservationDAO().updateReservation(reservationId, reservation)) {
				//Reservation updated successful
			}else {
				//Reservation update failed
			}
		}else {
			// No table available on selected capacity
		}

	}

}
