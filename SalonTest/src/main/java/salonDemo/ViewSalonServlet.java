package salonDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/ViewSalonServlet")
public class ViewSalonServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        List<Salon> list = SalonDao.getAllSalons();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a");
        

        pw.println("<html><body>");
        pw.println("<h2>Salon Details</h2>");

        pw.println("<table border='1' cellpadding='10'>");
        pw.println("<tr>");
        pw.println("<th>ID</th>");
        pw.println("<th>Salon Name</th>");
        pw.println("<th>Owner Name</th>");
        pw.println("<th>Email</th>");
        pw.println("<th>Phone</th>");
        pw.println("<th>City</th>");
        pw.println("<th>Opening Time</th>");
        pw.println("<th>Closing Time</th>");
        pw.println("<th>Salon Type</th>");
        pw.println("<th>Edit</th>");
        pw.println("<th>Delete</th>");
        pw.println("</tr>");

        for (Salon s : list) {
        	
        	LocalTime openTime = s.getOpening_time().toLocalTime();
            LocalTime closeTime = s.getClosing_time().toLocalTime();
            
            pw.println("<tr>");
            pw.println("<td>" + s.getSalon_id() + "</td>");
            pw.println("<td>" + s.getSalon_name() + "</td>");
            pw.println("<td>" + s.getOwner_name() + "</td>");
            pw.println("<td>" + s.getEmail() + "</td>");
            pw.println("<td>" + s.getPhone() + "</td>");
            pw.println("<td>" + s.getCity() + "</td>");
            
            pw.println("<td>" + openTime.format(formatter) + "</td>");
            pw.println("<td>" + closeTime.format(formatter) + "</td>");
            pw.println("<td>" + s.getSalon_type() + "</td>");
            pw.println("<td><a href='EditSalonServlet?salon_id="+s.getSalon_id()+"'>Edit</td></td>");
            pw.println("<td><a href='DeleteSalonServlet?salon_id="+s.getSalon_id()+"'>Delete</td></td>");

            pw.println("</tr>");
        }

        pw.println("</table>");
        pw.println("</body></html>");

        pw.close();
    }
}
