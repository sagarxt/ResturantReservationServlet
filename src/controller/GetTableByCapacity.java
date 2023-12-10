package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TableDAO;
import model.Table;

@WebServlet("/getTableByCapacity")
public class GetTableByCapacity extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GetTableByCapacity() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		ArrayList<Table> tables = new TableDAO().getTablesByCapacity(capacity);
	}

}
