package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class UserDAO {
	//Using this method we register an user to database by User object
	public boolean registerUser(User user) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.getConnection();
			String sql = "INSERT INTO user VALUES(?,?,?,?,?)";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, user.getUserId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPhoneNumber());
			preparedStatement.setString(5, user.getPassword());

			int affectedRows = preparedStatement.executeUpdate();

			if (affectedRows > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	//Using this method validate the user is available or not it return User object if not available return null
	public User validateUser(String email, String password) {

		User user = new User();

		try {

			Connection connection = DBConnection.getConnection();
			String sql = "SELECT * FROM user WHERE email = ? AND password = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				user.setUserId(resultSet.getInt("userId"));
				user.setName(resultSet.getString("name"));
				user.setEmail(resultSet.getString("email"));
				user.setPhoneNumber(resultSet.getString("phoneNumber"));
			} else {
				user = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
}
