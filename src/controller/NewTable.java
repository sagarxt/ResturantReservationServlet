package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TableDAO;
import model.Table;

@WebServlet("/newTable")
public class NewTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NewTable() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		int tableId = Integer.parseInt(request.getParameter("tableId"));
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		boolean available = Boolean.getBoolean(request.getParameter("available"));
		
		Table table = new Table();
		table.setTableId(tableId);
		table.setCapacity(capacity);
		table.setAvailable(available);
		
		if(new TableDAO().isAvailable(tableId)) {
			//failed
			RequestDispatcher dispatcher = request.getRequestDispatcher("failed.jsp");
			dispatcher.forward(request, response);
		}else {
			if(new TableDAO().newTable(table)) {
				//Table added successfully
				RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
			}else {
				//failed to create table
				RequestDispatcher dispatcher = request.getRequestDispatcher("failed.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

}
