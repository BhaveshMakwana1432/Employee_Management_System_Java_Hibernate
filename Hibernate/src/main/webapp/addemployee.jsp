<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
<%@ include file="header_footer.jsp" %>
</head>
<body>
   	<div class = "container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	<div class = "container">
   	<form action="saveemployee.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Employee Id </label>
    <input type="text" name="eid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
  </div>
  
    <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
  </div>
  



     <div class="form-group row">
    <label for="exampleInputEmail1">Select Gender</label>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="male" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="female">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
      
      
      
      
      
      
          <div class="form-group">
    <label for="exampleInputEmail1">Enter Address</label>
    <input type="text" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
  </div>
  
      <div class="form-group">
    <label for="exampleInputEmail1">Enter Mobile</label>
    <input type="number" name="mobile" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
  </div>
  
        <div class="form-group">
    <label for="exampleInputEmail1">Enter Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
  </div>
  
   <button type="submit" class="btn btn-dark">Submit</button>
    
  </div>









   
</form>
   	</div> 
</body>
</html>