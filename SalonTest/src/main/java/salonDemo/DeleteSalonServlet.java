package salonDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class DeleteSalonServlet
 */
@WebServlet("/DeleteSalonServlet")
public class DeleteSalonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSalonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		 int id = Integer.parseInt(request.getParameter("salon_id"));
		 int status = SalonDao.DeleteSalon(id);
		 if(status > 0)
		 {
			 response.sendRedirect("ViewSalonServlet");
		 }
		 else
		 {
			 pw.print("Sorry!...Delete was unsucessfully");
		 }
	}

}
