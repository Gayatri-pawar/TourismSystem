package TMS2;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchServlet")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query");
        request.setAttribute("query", query);
        request.setAttribute("results", null);
        request.setAttribute("message", null);

        if (query != null && !query.trim().isEmpty()) {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
               
                Class.forName("com.mysql.cj.jdbc.Driver");
                
           
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2", "root", "Root24");
                
              
                String sql = "SELECT dest_name FROM search WHERE dest_name LIKE ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, "%" + query + "%");
                rs = ps.executeQuery();

                if (rs.isBeforeFirst()) {
                 
                    List<String> resultsList = new ArrayList<>();
                  
                    while (rs.next()) {
                        resultsList.add(rs.getString("dest_name"));
                    }
                  
                    request.setAttribute("results", resultsList);
                } else {
                    request.setAttribute("message", "No results found.");
                }
            } catch (Exception e) {
                e.printStackTrace(); 
                request.setAttribute("message", "An error occurred: " + e.getMessage()); // Display error message
            } 
        } else {
            request.setAttribute("message", "No query provided.");
        }

        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
