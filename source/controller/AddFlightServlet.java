package com.wipro.frs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wipro.frs.service.*;
/**
 * Servlet implementation class AddFlightServlet
 */
@WebServlet("/AddFlightServlet")
public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int flightId= Integer.parseInt(request.getParameter("fid"));
		String source = request.getParameter("source1");
		String destination = request.getParameter("destination1");
		float duration = Float.parseFloat(request.getParameter("duration1"));
		int totalSeats = Integer.parseInt(request.getParameter("sc1"));
		float distance = Float.parseFloat(request.getParameter("distance1"));
//		String arrTime = request.getParameter("arrTime");
//		String depTime = request.getParameter("depTime");
		int price = Integer.parseInt(request.getParameter("cost1"));
		AdminControls ac = new AdminControls();
		
		
		try {
			
			if(ac.addFlight(flightId,source, destination, duration, totalSeats, distance,"00:00", "19:00", price))
				response.sendRedirect("adminpage2.jsp");
			else
				response.sendRedirect("FlightAddFailure.jsp");
		}
		catch (Exception e)
		{
			System.out.println("mistake at addFlightServlet");
			System.out.println(e);
		}
		
	}

}
