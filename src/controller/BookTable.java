package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TableDAO;

@WebServlet("/BookTable")
public class BookTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookTable() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		int tableId = Integer.parseInt(request.getParameter("tableId"));

		if (new TableDAO().bookTable(tableId)) {
			// Table booked successful
		} else {
			// Table booking failed
		}
	}

}
