package servlets;


import java.io.IOException;
import org.hibernate.Session;
import com.entity.Employee;
import com.provider.FactoryProvider;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;




public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("Running ....");
        int eid = Integer.parseInt(request.getParameter("eid"));
        Session session = FactoryProvider.getFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Employee emp = session.get(Employee.class, eid);
        emp.getName();
        session.delete(emp);
        tx.commit();
        response.sendRedirect("displayemployee.jsp");
    }

  

}
