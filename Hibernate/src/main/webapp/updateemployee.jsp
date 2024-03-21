<%@page import="com.entity.Employee" %>
<%@page import="org.hibernate.query.Query" %>
<%@page import="com.provider.FactoryProvider" %>

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
   
   <%
        int eid = Integer.parseInt(request.getParameter("eid"));
        org.hibernate.Session ses = FactoryProvider.getFactory().openSession();
        Employee emp = ses.get(Employee.class,eid);
        
        
        
   %>
   
   <div class="container">
   <div class="card mt-3">
   <img class="card-img-top m-4" style="max-width:70px;" src="./css/1.png" class="card-img-top" atl="..."/>
   <div class="card-body">
   
   <form action="UpdateServlet">
   
   <h5 class="card-text m-3"><b>Employee Id:</b><input type="number" name="eid" value="<%= emp.getEid() %>" placeholder="<%= emp.getEid() %>" /></h5>
   <p class="card-text m-3"><b>Name:</b><input type="text" name="name" placeholder="<%= emp.getName() %>" /></p>
   <p class="card-text m-3"><b>Address:</b><input type="text" name="address" placeholder="<%= emp.getAddress() %>" /></p>
   <p class="card-text m-3"><b>Mobile:</b><input type="text" name="mobile" placeholder="<%= emp.getMobile() %>" /></p>
   
   <p class="card-text m-3"><b>Gender:</b>
   
          <input type="radio" name="gender" value="male" checked><label>Male</label>
          <input type="radio" name="gender" value="female"><label>Female</label>
          

   </p>
   
   
   
   
   <p class="card-text m-3"><b>Email:</b><input type="text" name="email" placeholder="<%= emp.getEmail() %>" /></p>
   
   
   
  
   
   <input type = "submit" value ="Save Update" class = "btn btn-primary"></input>
   </form>
    
   </div>
   </div>
   </div>
   
   }
   


   
</body>
</html>