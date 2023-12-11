package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;

import model.Reservation;

public class ReservationDAO {

	public boolean newReservation(Reservation reservation) {

		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "INSERT INTO reservation VALUES(?,?,?,?,?,?,?,?,?)";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, reservation.getReservationId());
			preparedStatement.setDate(2, Date.valueOf(reservation.getDate()));
			preparedStatement.setTime(3, Time.valueOf(reservation.getTime()));
			preparedStatement.setInt(4, reservation.getPartySize());
			preparedStatement.setString(5, reservation.getCustomerName());
			preparedStatement.setString(6, reservation.getPhoneNumber());
			preparedStatement.setInt(7, reservation.getTableId());
			preparedStatement.setInt(8, reservation.getUserId());
			preparedStatement.setString(9, reservation.getStatus());

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean updateReservation(int reservationId, Reservation reservation) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "UPDATE reservation SET date=?,time=?,partySize=?,customerName=?,phoneNumber=?,tableId=?,status=? WHERE reservationId=?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setDate(1, Date.valueOf(reservation.getDate()));
			preparedStatement.setTime(2, Time.valueOf(reservation.getTime()));
			preparedStatement.setInt(3, reservation.getPartySize());
			preparedStatement.setString(4, reservation.getCustomerName());
			preparedStatement.setString(5, reservation.getPhoneNumber());
			preparedStatement.setInt(6, reservation.getTableId());
			preparedStatement.setString(7, reservation.getStatus());
			preparedStatement.setInt(8, reservationId);

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean cancelReservation(int reservationId) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "UPDATE reservation SET status=? WHERE reservationId=? AND (status='active' OR status='pending')";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "canceled");
			preparedStatement.setInt(2, reservationId);

			int affectedRows = preparedStatement.executeUpdate();

			int tableId = new ReservationDAO().getReservationbyId(reservationId).getTableId();
			new TableDAO().freeTable(tableId);

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean completeReservation(int reservationId) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "UPDATE reservation SET status=? WHERE reservationId=?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "completed");
			preparedStatement.setInt(2, reservationId);

			int affectedRows = preparedStatement.executeUpdate();

			int tableId = new ReservationDAO().getReservationbyId(reservationId).getTableId();
			new TableDAO().freeTable(tableId);

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public ArrayList<Reservation> allReservations() {
		Reservation reservation = new Reservation();
		ArrayList<Reservation> reservations = new ArrayList<>();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM reservation";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				reservation.setReservationId(resultSet.getInt("reservationId"));
				reservation.setDate(resultSet.getDate("date").toLocalDate());
				reservation.setTime(resultSet.getTime("time").toLocalTime());
				reservation.setPartySize(resultSet.getInt("partySize"));
				reservation.setCustomerName(resultSet.getString("customerName"));
				reservation.setPhoneNumber(resultSet.getString("phoneNumber"));
				reservation.setTableId(resultSet.getInt("tableId"));
				reservation.setUserId(resultSet.getInt("userId"));
				reservation.setStatus(resultSet.getString("status"));

				reservations.add(reservation);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reservations;
	}

	public Reservation getReservationbyId(int reservationId) {
		Reservation reservation = new Reservation();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM reservation WHERE reservationId = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, reservationId);

			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				reservation.setReservationId(resultSet.getInt("reservationId"));
				reservation.setDate(resultSet.getDate("date").toLocalDate());
				reservation.setTime(resultSet.getTime("time").toLocalTime());
				reservation.setPartySize(resultSet.getInt("partySize"));
				reservation.setCustomerName(resultSet.getString("customerName"));
				reservation.setPhoneNumber(resultSet.getString("phoneNumber"));
				reservation.setTableId(resultSet.getInt("tableId"));
				reservation.setUserId(resultSet.getInt("userId"));
				reservation.setStatus(resultSet.getString("status"));
			} else {
				reservation = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reservation;
	}

	public ArrayList<Reservation> getReservationsByUserId(int userId) {
		ArrayList<Reservation> reservations = new ArrayList<Reservation>();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM reservation WHERE userId = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, userId);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Reservation reservation = new Reservation();
				reservation.setReservationId(resultSet.getInt("reservationId"));
				reservation.setDate(resultSet.getDate("date").toLocalDate());
				reservation.setTime(resultSet.getTime("time").toLocalTime());
				reservation.setPartySize(resultSet.getInt("partySize"));
				reservation.setCustomerName(resultSet.getString("customerName"));
				reservation.setPhoneNumber(resultSet.getString("phoneNumber"));
				reservation.setTableId(resultSet.getInt("tableId"));
				reservation.setUserId(resultSet.getInt("userId"));
				reservation.setStatus(resultSet.getString("status"));

				reservations.add(reservation);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reservations;
	}
}
