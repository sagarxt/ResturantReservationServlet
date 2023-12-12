package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Validate for Admin with username and password if don't match with admin
		// details check for user details
		if (email.equals("admin@oupp.com") && password.equals("password")) {
			// If admin forward to admin-dashboard

		} else {
			// Validate the user is available or not using validateUser method
			User user = new UserDAO().validateUser(email, password);
			if (user != null) {
				// If validated user forwarded to user-dashboard
				HttpSession session = request.getSession();
				// save userId to session
				session.setAttribute("userId", user.getUserId());
				session.setAttribute("name", user.getName());
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
				requestDispatcher.forward(request, response);
			} else {
				// If Invalid include Invalid Details message
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("loginfailed.jsp");
				requestDispatcher.forward(request, response);

			}
		}

	}
}
