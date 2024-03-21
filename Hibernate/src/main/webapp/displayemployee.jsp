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
         org.hibernate.Session ses = FactoryProvider.getFactory().openSession();
         Query qry = ses.createQuery("from Employee");
         
          java.util.List<Employee> ls = qry.list();
          for(Employee emp:ls){
   %>
   
   <div class="container">
   <div class="card mt-3">
   <img class="card-img-top m-4" style="max-width:70px;" src="./css/1.png" class="card-img-top" atl="..."/>
   <div clas="card-body">
   
   <h5 class="card-text m-3"><b>Employee Id:</b> <%= emp.getEid() %></h5>
   <p class="card-text m-3"><b>Name:</b> <%= emp.getName() %></p>
   <p class="card-text m-3"><b>Address:</b> <%= emp.getAddress() %></p>
   <p class="card-text m-3"><b>Mobile:</b> <%= emp.getMobile() %></p>
   <p class="card-text m-3"><b>Gender:</b> <%= emp.getGender() %></p>
   <p class="card-text m-3"><b>Email:</b> <%= emp.getEmail() %></p>
   </div>
   
   
   <button type="button" class="btn btn-dark m-2"><a style="text-decoration: none; color:white;" href="updateemployee.jsp?eid=<%= emp.getEid()%>">Update</a></button>
  <button type="button" class="btn btn-danger m-2"><a style="text-decoration: none; color:white;" href="DeleteServlet?eid=<%= emp.getEid()%>">Delete</a></button>
   
   </div>
   </div>
   
   
   <% } %>
   
</body>
</html>