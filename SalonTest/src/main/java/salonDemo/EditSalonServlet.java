package salonDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/EditSalonServlet")
public class EditSalonServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int salonId = Integer.parseInt(request.getParameter("salon_id"));
        Salon s = SalonDao.getSalonById(salonId);

        // Convert SQL Time → HH:mm (required for input type="time")
        String openingTime = s.getOpening_time().toLocalTime().toString().substring(0, 5);
        String closingTime = s.getClosing_time().toLocalTime().toString().substring(0, 5);

        pw.println("<html><body>");
        pw.println("<h2>Edit Salon Details</h2>");

        pw.println("<form action='UpdateSalonServlet' method='post'>");
        pw.println("<input type='hidden' name='salon_id' value='" + s.getSalon_id() + "'>");

        pw.println("<table border='1' cellpadding='10'>");

        pw.println("<tr><td>Salon Name</td><td><input type='text' name='salon_name' value='" + s.getSalon_name() + "'></td></tr>");
        pw.println("<tr><td>Owner Name</td><td><input type='text' name='owner_name' value='" + s.getOwner_name() + "'></td></tr>");
        pw.println("<tr><td>Email</td><td><input type='email' name='email' value='" + s.getEmail() + "'></td></tr>");
        pw.println("<tr><td>Phone</td><td><input type='text' name='phone' value='" + s.getPhone() + "'></td></tr>");
        pw.println("<tr><td>Address</td><td><input type='text' name='address' value='" + s.getAddress() + "'></td></tr>");
        pw.println("<tr><td>City</td><td><input type='text' name='city' value='" + s.getCity() + "'></td></tr>");

        pw.println("<tr><td>Opening Time</td><td><input type='time' name='opening_time' value='" + openingTime + "'></td></tr>");
        pw.println("<tr><td>Closing Time</td><td><input type='time' name='closing_time' value='" + closingTime + "'></td></tr>");

        pw.println("<tr><td>Salon Type</td><td><input type='text' name='salon_type' value='" + s.getSalon_type() + "'></td></tr>");

        pw.println("<tr><td colspan='2' align='center'>");
        pw.println("<input type='submit' value='Update Salon'>");
        pw.println("</td></tr>");

        pw.println("</table>");
        pw.println("</form>");

        pw.println("</body></html>");
        pw.close();
    }
}

