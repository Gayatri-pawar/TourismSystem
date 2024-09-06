package TMS2;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JFileChooser;


@WebServlet("/Registration")
@MultipartConfig
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Registration() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("cp");
		String pno = request.getParameter("phone");
	Date registration_date =java.sql.Date.valueOf(request.getParameter("regdate"));
	
	String time = request.getParameter("regtime");
	String address  =request.getParameter("address");
	String adhar = request.getParameter("adhar");
	Date birthdate = java.sql.Date.valueOf(request.getParameter("birthdate"));
	String age = request.getParameter("age");
	String country = request.getParameter("country");
	String state = request.getParameter("state");
	String male = request.getParameter("male");
	String female = request.getParameter("female");
	
	
		String status =request.getParameter("status");
//		String picture= request.getParameter("picture");
//		  Part picturePart = request.getPart("picture");
//	        InputStream picture = picturePart.getInputStream();
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(confirm_password);
		System.out.println(pno);
		System.out.println(registration_date);
		
		System.out.println(status);
//		System.out.println(picture);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
			 PreparedStatement st =con.prepareStatement("insert into registration (Name,email,password,confirm_password,phone_number,registration_date,time,address,adhar,birthdate,age,country,state,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//			 
//			 JFileChooser jfc = new JFileChooser();
//			 jfc.showOpenDialog(null);
//			 File file = jfc.getSelectedFile();
//			 FileInputStream fis= new FileInputStream(file);
//			 st.setBinaryStream(5, fis,fis.available());
			 
			 
			 st.setString(1, name);
			   st.setString(2, email);
			   st.setString(3,password);
			   st.setString(4,confirm_password);
			   st.setString(5, pno);
			   st.setDate(6, registration_date);
			   st.setString(7, time);
			   st.setString(8,address);
			   st.setString(9, adhar);
			   st.setDate(10, birthdate);
			   st.setString(11, age);
			   st.setString(12, country);
			   st.setString(13,state);
			   st.setString(14,status);
			   
			   
			   
			   //			   st.setBinaryStream(5,picture);
//				 st.setBinaryStream(5, fis,fis.available());
			 st.executeUpdate();
			
			response.sendRedirect("profile.jsp");
//			 PrintWriter out = response.getWriter();
//			 out.println("inserted");
//			 out.println(name );
//			 out.println(password);
			 
			 
			}catch(Exception e){
				 PrintWriter out = response.getWriter();
				 out.println("<html><head>");
		          out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
					   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
				
		          out.println("<body>");
		        
		          out.println("<div class='text-center pt-5'>");
				out.println("<h1>Something Went Wrong</h1>");
				 out.println("<a href='Registration.jsp' class='text-center btn btn-sm btn-primary '>Check Again</a>");
		          out.println("</div>");
		          out.println("</body>");
		          out.println("</head></html>");
				e.printStackTrace();
				
			}
		
	}

	

}
