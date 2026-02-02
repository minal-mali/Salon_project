package salonDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.time.LocalTime;

@WebServlet("/UpdateSalonServlet")
public class UpdateSalonServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int id = Integer.parseInt(request.getParameter("salon_id"));
        String salon_name = request.getParameter("salon_name");
        String owner_name = request.getParameter("owner_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");

        String openTimeStr = request.getParameter("opening_time");
        String closeTimeStr = request.getParameter("closing_time");

        Time opening_time = Time.valueOf(LocalTime.parse(openTimeStr));
        Time closing_time = Time.valueOf(LocalTime.parse(closeTimeStr));
        
        String salon_type = request.getParameter("salon_type");

        Salon s = new Salon();
        s.setSalon_id(id);
        s.setSalon_name(salon_name);
        s.setOwner_name(owner_name);
        s.setEmail(email);
        s.setPhone(phone);
        s.setAddress(address);
        s.setCity(city);
        s.setOpening_time(opening_time);
        s.setClosing_time(closing_time);
        s.setSalon_type(salon_type);

        int status = SalonDao.updateSalon(s);

        if (status > 0) {
            pw.println("<h3>Salon updated successfully</h3>");
            response.sendRedirect("ViewSalonServlet");
        } else {
            pw.println("<h3>Update failed</h3>");
        }

        pw.close();
    }
}
