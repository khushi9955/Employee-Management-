package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String userName="root";
			String password="Khushi@2000";
			String dbName="employee_management";
			conn=DriverManager.getConnection("jdbc:mysql://localhost/"+dbName,userName,password);
			System.out.println("Connection Done");
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}

}
