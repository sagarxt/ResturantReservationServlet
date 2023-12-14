package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TableDAO;
import model.Table;

@WebServlet("/allTables")
public class AllTables extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AllTables() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		ArrayList<Table> tables = new TableDAO().getTables();
		request.setAttribute("tables", tables);
		RequestDispatcher dispatcher = request.getRequestDispatcher("viewtables.jsp");
		dispatcher.forward(request, response);
	}
}
