package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		//Generate random userId
		Random random = new Random();
		int userId = random.nextInt(Integer.MAX_VALUE);
		
		//Fetch data from web page
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");

		User user = new User();
		
		//Bind data to User object
		user.setUserId(userId);
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNumber(phoneNumber);
		user.setPassword(password);
		
		//Register the user using registerUser method
		if (new UserDAO().registerUser(user)) {
			//If register successful forwarded to login.jsp
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("loginsuccess.jsp");
			requestDispatcher.forward(request, response);
		} else {
			//If register failed include error message
			out.print("Reg failed");
		}
	}

}
