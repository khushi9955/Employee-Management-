package controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utility.Utility;
import businessLogic.EmployeeBusinessLogic;
import connection.DatabaseConnection;
import entity.EmployeeEntity;

public class GetEmployees extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long startIndex=Utility.longValue(request.getParameter("limit"));
		request.setAttribute("startIndex",startIndex);
		Long lastIndex= 5l;
		
		
		Connection conn = DatabaseConnection.getConnection();
		
		EmployeeBusinessLogic employeeBusinessLogic = new EmployeeBusinessLogic();
		
		List<EmployeeEntity>  employeeList = employeeBusinessLogic.getEmployees(conn,startIndex,lastIndex);
		List<EmployeeEntity>  employeeListCount = employeeBusinessLogic.getEmployees(conn,null,null);
		int count=employeeListCount.size();
		System.out.println(employeeList);
		request.setAttribute("employeeList", employeeList);
		request.setAttribute("count",count );
		RequestDispatcher rd = request.getRequestDispatcher("employees.jsp");
		rd.forward(request, response);
	}

}
