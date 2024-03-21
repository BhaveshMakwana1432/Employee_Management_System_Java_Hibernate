package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Employee;
import com.provider.FactoryProvider;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 int eid = Integer.parseInt(request.getParameter("eid"));
	
	        Session session = FactoryProvider.getFactory().openSession();
			
	        org.hibernate.Transaction tx = session.beginTransaction();
			
	        Employee emp = session.get(Employee.class, eid);
			
	        emp.getName();
	        String name = request.getParameter("name");	
	        String gender = request.getParameter("gender");	
	        String email = request.getParameter("email");	
	        String mobile = request.getParameter("mobile");	
	        String address = request.getParameter("address");	
	        
	        
	        
	        emp.setEid(eid);
	        emp.setEmail(email);
	        emp.setGender(gender);
	        emp.setMobile(mobile);
	        emp.setName(name);
	        emp.setAddress(address);
	       
	        session.update(emp);
	        tx.commit();
	        response.sendRedirect("displayemployee.jsp");
	        
	}
	


}
