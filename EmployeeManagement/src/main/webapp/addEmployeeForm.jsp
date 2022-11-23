.<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
<div class="container mt-5">
<form action="saveEmployeeInfo" method="post" return ="validate();">
  
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="colFormLabel" name="name" required placeholder="Enter Your Name">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Birth Date</label>
    <div class="col-sm-6">
 <input type="date" class="form-control" id="colFormLabel" name="birthday" required name="birthday" placeholder="Enter Your Birthdate">
     </div>
  </div>
 
   <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-6">
      <textarea class="form-control" id="exampleFormControlTextarea1" maxlength ="150" name="address" placeholder="Enter your Address"rows="3"></textarea>
    </div>
  </div>
  
   <div class="form-group row">
    <label for="colFormLabel" required class="col-sm-2 col-form-label">Gender</label>
    <div class="form-check form-check-inline">
     <label class="form-check-label" for="inlineRadio1">Male</label>
  <input class="form-check-input" type="radio" name="gender"  id="gender" value="Male">
 
</div>
<div class="form-check form-check-inline">
	<label class="form-check-label" for="inlineRadio2">Female</label>
  <input class="form-check-input" type="radio" name="gender"  id="gender" value="Female">
  
</div>


  </div>
   <div class="form-group row">
    <label for="colFormLabel"  class="col-sm-2  col-form-label">Salary</label>
    <div class="col-sm-6">
       <input type="number"  class="form-control avc" name="salary" id="colFormLabel" placeholder="Enter Your Salary">
    </div>
  </div>
  <div class= "container">
   <button  class="btn btn-primary btn-lg active" type="submit">Submit</button>
  
  </div>
</form>

</div>
<script>
function validate(){
	.("avc"){
		alert("bsdahj");
		return false;
	}
}
</script>

</body>
</html>