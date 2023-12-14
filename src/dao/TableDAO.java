package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Table;

public class TableDAO {

	public boolean newTable(Table table) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "INSERT INTO tables VALUES(?,?,?)";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, table.getTableId());
			preparedStatement.setInt(2, table.getCapacity());
			preparedStatement.setBoolean(3, table.isAvailable());

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean bookTable(int tableId) {
		boolean flag = false;

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "UPDATE tables SET available=? WHERE tableId=?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setBoolean(1, false);
			preparedStatement.setInt(2, tableId);

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean freeTable(int tableId) {
		boolean flag = false;

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "UPDATE tables SET available=? WHERE tableId=?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setBoolean(1, true);
			preparedStatement.setInt(2, tableId);

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public int getAvailableTable(int capacity) {
		int tableId = -1;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM tables WHERE capacity=? AND available=TRUE";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, capacity);

			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				tableId = resultSet.getInt("tableId");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tableId;
	}

	public ArrayList<Table> getTablesByCapacity(int capacity) {
		Table table = new Table();
		ArrayList<Table> tables = new ArrayList<Table>();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM tables WHERE capacity=?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, capacity);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				table.setTableId(resultSet.getInt("tableId"));
				table.setCapacity(resultSet.getInt("capacity"));
				table.setAvailable(resultSet.getBoolean("available"));

				tables.add(table);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tables;
	}

	public boolean isAvailable(int tableId) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM tables WHERE tableId=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, tableId);

			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				flag = true;
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		}
		return flag;
	}

	public ArrayList<Table> getTables() {
		ArrayList<Table> tables = new ArrayList<Table>();

		try {
			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM tables";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Table table = new Table();

				table.setTableId(resultSet.getInt("tableId"));
				table.setCapacity(resultSet.getInt("capacity"));
				table.setAvailable(resultSet.getBoolean("available"));

				tables.add(table);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tables;
	}
}
