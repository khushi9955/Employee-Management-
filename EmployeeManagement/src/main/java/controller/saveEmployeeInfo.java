package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utility.Utility;
import businessLogic.EmployeeBusinessLogic;
import connection.DatabaseConnection;
import entity.EmployeeEntity;

public class saveEmployeeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String birthday = Utility.stringValue(request.getParameter("birthday"));
		Double salary = Utility.doubleValue(request.getParameter("salary"));
		String gender =  Utility.stringValue(request.getParameter("gender"));
		String address =  Utility.stringValue(request.getParameter("address"));
		String name =  Utility.stringValue(request.getParameter("name"));
		
		;		
		EmployeeEntity userEntity = new EmployeeEntity();
		userEntity.setAddress(address);
		userEntity.setBirthday(birthday);
		userEntity.setGender(gender);
		userEntity.setName(name);
		userEntity.setSalary(salary);
		
		Connection conn = DatabaseConnection.getConnection();
		EmployeeBusinessLogic employeeBusinessLogic = new EmployeeBusinessLogic();
		employeeBusinessLogic.saveEmployee(conn, userEntity);
		
		response.sendRedirect("GetEmployees");
		
	}

}
