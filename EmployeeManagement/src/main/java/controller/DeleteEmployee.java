package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessLogic.EmployeeBusinessLogic;
import connection.DatabaseConnection;

/**
 * Servlet implementation class DeleteEmployee
 */
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		
		Connection conn = DatabaseConnection.getConnection();
		EmployeeBusinessLogic employeeBusinessLogic= new EmployeeBusinessLogic();
		employeeBusinessLogic.deleteEmployee(conn, id);
		response.sendRedirect("GetEmployees");
	}

}
