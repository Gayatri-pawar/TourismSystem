package TMS2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customerlogin")
public class customerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public customerlogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email = request.getParameter("username");
	String password = request.getParameter("password");
	try {
		
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
		 PreparedStatement ps =con.prepareStatement("select * from registration where email= ? and password=?");
		 ps.setString(1, email);
		 ps.setString(2, password);
		  PrintWriter out= response.getWriter();
		  ResultSet rs = ps.executeQuery();
		  if(rs.next()) {
		      response.sendRedirect("customer.jsp");
//		      response.sendRedirect("profile.jsp");
		     
		  }else {
			  RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
			  rd.forward(request, response);
		  }
	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("error");
		PrintWriter out = response.getWriter();
		out.println("error");
	}
	}

}
