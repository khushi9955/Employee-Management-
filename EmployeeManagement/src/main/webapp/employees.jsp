
<!DOCTYPE html>
<%@page import="entity.EmployeeEntity"%>
<%@page import="java.util.List"%>
<html>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Employee Management</title>
</head>
<body>
<div class="mt-5 container">
<button type="button" onclick="getEmployeeForm()" class="btn btn-info">Add Employee</button>
</div>
<div>
<table class="table table-hover ">
  <thead>
    <tr>
      <th scope="col">Sr. No.</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Gender</th>
      <th scope="col">Salary</th>
      <th scope="col">Birthday</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%
  Long startIndex=(Long)request.getAttribute("startIndex");
  List<EmployeeEntity>  employeeList = ( List<EmployeeEntity>) request.getAttribute("employeeList");
  if(employeeList != null && employeeList.size()>0){
	  Long count=startIndex;
	  for(EmployeeEntity entity : employeeList){
%>
 <tr>
 		<td><%=++count%></td>
      <td><%=entity.getName() %></td>
	  <td><%=entity.getAddress()%></td>  
	  <td><%=entity.getGender() %></td>
	  <td><%=entity.getSalary() %></td>
	  <td><%=entity.getBirthday() %></td> 
	  <td>
	  <ul>
	  <li>
	  <button type="button" onclick="deleteEmployee(<%=entity.getId() %>)"; class="btn btn-danger">Delete</button>
	  </li>
	  </ul>
	  </td>  
    </tr>
   

<%		  
	  }
  }
  %>
   
  </tbody>
  </div>
</table>

<div>
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item ">
      <a class="page-link" onclick="getEmployees(<%=(startIndex>1?startIndex-5:startIndex)%>)" >Previous</a>
    </li>
    <li class="page-item"><a class="page-link" onclick="getEmployees(0)">1</a></li>
    <%
   
    Integer totalcount = (Integer) request.getAttribute("count");
    if(employeeList != null && employeeList.size()>0){
    	int i=2;
    	for(int count=1;count<=totalcount-1;count++){
    		if(count%5==0){%>
    		<li class="page-item"><a class="page-link" onclick="getEmployees(<%=count%>)"><%=i++ %></a></li>
    		<%
    		}
    	}
    }
    %>
      <a class="page-link" onclick="getEmployees(<%=startIndex<totalcount-5?startIndex+5:startIndex%>)">Next</a>
    </li>
  </ul>
</nav>
</div>
<script type="text/javascript">

function getEmployeeForm(){
	window.location="AddEmployeeForm";
}
function deleteEmployee(id){
	var result = confirm("Are you sure want to delete employee?");
	if(result){
		window.location="DeleteEmployee?id="+id;
	}
}
function getEmployees(limit){
	window.location="GetEmployees?limit="+limit;
}
</script>
</body>
</html>