package com.wipro.frs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.frs.service.AdminControls;
import com.wipro.frs.service.Processing;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
		int flightId = Integer.parseInt(request.getParameter("flightId"));
		AdminControls ac = new AdminControls();
		ac.deleteRow(flightId);
		response.sendRedirect("adminpage2.jsp");
		}
		catch (Exception e)
		{
			System.out.println("fu");
		}
	}

}
