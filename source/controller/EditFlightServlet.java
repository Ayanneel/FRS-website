package com.wipro.frs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.frs.service.AdminControls;

/**
 * Servlet implementation class EditFlightServlet
 */
@WebServlet("/EditFlightServlet")
public class EditFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AdminControls ac = new AdminControls();
		System.out.println(request.getParameter("flightName"));
		int flightId=Integer.parseInt(request.getParameter("flightName"));
		String source= request.getParameter("source");
		String destination = request.getParameter("destination");
		System.out.println(request.getParameter("seatingCapacity"));
		float duration = Float.parseFloat(request.getParameter("duration"));
		int totalSeats = Integer.parseInt(request.getParameter("seatingCapacity"));
		float distance = Float.parseFloat(request.getParameter("distance"));
		int price = Integer.parseInt(request.getParameter("cost"));
		try {
			if(ac.editFlight(flightId, source, destination, duration, totalSeats, distance, price))
			{
				response.sendRedirect("adminpage2.jsp");
			}
			else
				System.out.println("error");
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			System.out.println(e);
		}
	}

}
