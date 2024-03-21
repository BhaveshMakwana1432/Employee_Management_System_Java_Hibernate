<%@page import = "com.provider.FactoryProvider" %>

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
   	
     org.hibernate.SessionFactory factory = FactoryProvider.getFactory();
   	 org.hibernate.Session ses = factory.openSession();
   	 org.hibernate.Transaction tx = ses.beginTransaction();
   	 
   	 int eid = Integer.parseInt(request.getParameter("eid"));
   	 String name = request.getParameter("name");
   	String address = request.getParameter("address");
   	String gender = request.getParameter("gender");
   	String mobile = request.getParameter("mobile");
	String email = request.getParameter("email");
   	
   	com.entity.Employee emp = new com.entity.Employee(eid,name,gender,address,mobile,email);
   	 ses.save(emp);
   	 tx.commit();
   	 ses.close();
   	
   	%>
   	
   	<br><br>
   	<center>
   	<h1 style="color:Green; margin:20px;">Record Saved Successfully</h1>
   	<h2><a href="displayemployee.jsp">View Records</a></h2>
   	</center>
   	
   	
   
   	
</body>
</html>