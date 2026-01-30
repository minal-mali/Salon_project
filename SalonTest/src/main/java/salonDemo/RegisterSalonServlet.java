package salonDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;

@WebServlet("/RegisterSalonServlet")
public class RegisterSalonServlet extends HttpServlet {
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
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String city = request.getParameter("city");

        Time opening_time = Time.valueOf(request.getParameter("opening_time") + ":00");
        Time closing_time = Time.valueOf(request.getParameter("closing_time") + ":00");

        String salon_type = request.getParameter("salon_type");

        Salon s = new Salon();
        s.setSalon_id(id);
        s.setSalon_name(salon_name);
        s.setOwner_name(owner_name);
        s.setEmail(email);
        s.setPhone(phone);
        s.setPassword(password);
        s.setAddress(address);
        s.setCity(city);
        s.setOpening_time(opening_time);
        s.setClosing_time(closing_time);
        s.setSalon_type(salon_type);

        int status = SalonDao.saveData(s);

        if (status > 0) 
        {
            pw.println("<h3>Record inserted successfully</h3>");
        } 
        else {
            pw.println("<h3>Unable to save the record</h3>");
        }

        pw.close();
    }
}
