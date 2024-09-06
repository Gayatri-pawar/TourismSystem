package TMS2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 String email  = request.getParameter("username");
     		String password=request.getParameter("password");

Class.forName("com.mysql.cj.jdbc.Driver");
     		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
     		PrintWriter out = response.getWriter();
     		out.println("<html><head>");
     		out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
    		   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
    	
     		out.println("<body>");
     		out.println("<p class='p-5 shadow bg-secondary text-black'>Your Credentials are correct</p>");
     		out.println("</body>");
     		out.println("</head></html>");
      if("admin@gmail.com".equals(email) && "admin".equals(password))
      
      {
    	  
     	 response.sendRedirect("Admin.jsp");
      }
      else{
     	 response.sendRedirect("index.jsp");
      }
		}catch(Exception e) {
			e.printStackTrace();
			}
	    
	   

	}

}
