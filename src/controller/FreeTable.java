package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TableDAO;

@WebServlet("/FreeTable")
public class FreeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FreeTable() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		int tableId = Integer.parseInt(request.getParameter("tableId"));

		if (new TableDAO().freeTable(tableId)) {
			// Table freed successful
		} else {
			// Task failed
		}
	}

}
