package TMS2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

 
  
  

        
   

    
    @WebServlet("/BookingServlet")
    public class BookingServlet extends HttpServlet {

        private static final String SMS_API_URL = "https://rest.nexmo.com/sms/json";
        private static final String API_KEY = "e2dee116";
        private static final String API_SECRET = "lgfJm78OHxHD6fye";

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String phoneNumber = request.getParameter("phone_number");
            String action = request.getParameter("action");
            String message;

            if ("Approve".equals(action)) {
                message = "Your booking has been approved. Thank you! (This is just for testing. Kindly ignore it.)";
            } else if ("Reject".equals(action)) {
                message = "Your booking has been rejected. Please contact support for further information.";
            } else {
                throw new ServletException("Invalid action.");
            }

            // Get the response message from sendSms
            String smsResponseMessage = sendSms(phoneNumber, message);

            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<html><body>");
                out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
				   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
			
                out.println("<h1>SMS Response</h1>");
                out.println("<p>" + smsResponseMessage + "</p>");
                out.println("<a href='report.jsp' class='text-center btn btn-sm btn-primary '>Check Again</a>");
                 
                out.println("</body></html>");
            }
        }

        private String sendSms(String phoneNumber, String message) throws IOException {
            URL url = new URL(SMS_API_URL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            connection.setDoOutput(true);

            String encodedMessage = URLEncoder.encode(message, "UTF-8");
 
            String postData = String.format(
                "api_key=%s&api_secret=%s&to=%s&from=YourSenderName&text=%s",
                API_KEY,
                API_SECRET,
                phoneNumber,
                encodedMessage
            );

            // Send POST request
            try (OutputStream os = connection.getOutputStream()) {
                os.write(postData.getBytes());
                os.flush();
            }

            // Read and return the response
            StringBuilder responseBody = new StringBuilder();
            int responseCode = connection.getResponseCode();
            try (BufferedReader in = new BufferedReader(new InputStreamReader(
                    responseCode == HttpURLConnection.HTTP_OK ? connection.getInputStream() : connection.getErrorStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    responseBody.append(inputLine);
                }
            }
            
            return responseBody.toString();
        }
    }
