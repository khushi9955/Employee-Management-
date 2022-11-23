package businessLogic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import entity.EmployeeEntity;

public class EmployeeBusinessLogic {
	
	public void saveEmployee(Connection conn, EmployeeEntity entity) {
		String query="insert into employees (name,address,birthday,gender,salary) values(?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setObject(1, entity.getName());
			ps.setObject(2, entity.getAddress());
			ps.setObject(3, entity.getBirthday());
			ps.setObject(4, entity.getGender());
			ps.setObject(5, entity.getSalary());
			System.out.println(ps.toString());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public List<EmployeeEntity> getEmployees(Connection conn,Long firstIndex,Long lastIndex){
		String limit = "";
		if (firstIndex != null && lastIndex != null) {
			limit="LIMIT "+firstIndex+" , "+lastIndex;
		}
		
		List<EmployeeEntity> employeeList = new LinkedList();
		
		String query="select * from employees "+limit;
		System.out.println("-----   "+query);
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs= ps.executeQuery();

			while (rs.next()) {
				EmployeeEntity entity = new EmployeeEntity();
				
				Long id = rs.getLong("id");
				String name = rs.getString("name");
				String dob = rs.getString("birthday");
				Double salary = rs.getDouble("salary");
				String address = rs.getString("address");
				String gender = rs.getString("gender");

				entity.setAddress(address);
				entity.setBirthday(dob);
				entity.setGender(gender);
				entity.setSalary(salary);
				entity.setName(name);
				entity.setId(id);
				
				employeeList.add(entity);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return employeeList;
	}

	public void deleteEmployee(Connection conn, Long id) {
		String query= "delete from employees where id=?";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setObject(1, id);
			int i=ps.executeUpdate();
			System.out.println(ps.toString());
			System.out.println("IIII0   "+i);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
