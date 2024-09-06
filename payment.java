package TMS2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public payment() {
        super();
       
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_method= request.getParameter("p_method");
//		int card_number = Integer.parseInt(request.getParameter("cardnumber"));
//		int card_number = Integer.parseInt(request.getParameter("cardnumber"));
		
		String card_number = request.getParameter("cardnumber");
//		int expiry_date = Integer.parseInt(request.getParameter("expdate"));
		
		Date  expiry_date = java.sql.Date.valueOf(request.getParameter("expdate"));
//		  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//	        dateFormat.setLenient(false); 
//	        Date expiryDate = dateFormat.parse(expDateStr);
//	        
	        
	        
		int cvv= Integer.parseInt(request.getParameter("cw"));
		String billing_address = request.getParameter("bilingaddress");
		String City = request.getParameter("city");
		String State = request.getParameter("state");
		String Zip = request.getParameter("zip");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
		    PreparedStatement st = con.prepareStatement("insert into payment2(card_number,expiry_date,cvv,bill_address,city,state,zip) values(?,?,?,?,?,?,?)");
//			st.setString(1, p_method);
//			st.setInt(1, card_number);
		    st.setString(1, card_number);
			st.setDate(2, expiry_date);
//			st.setDate(2, expiry_date);
			st.setInt(3, cvv);
			st.setString(4, billing_address);
			st.setString(5, City);
			st.setString(6, State);
			st.setString(7, Zip);
			
		    st.executeUpdate();
//			response.sendRedirect("");
			PrintWriter out = response.getWriter();
			out.print("card number is " +card_number);
			out.print("card expiry date is "+expiry_date);
			out.print(cvv);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		 
		
	}

}
