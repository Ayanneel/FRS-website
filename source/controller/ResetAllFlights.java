package com.wipro.frs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wipro.frs.dao.*;


/**
 * Servlet implementation class ResetAllFlights
 */
@WebServlet("/ResetAllFlights")
public class ResetAllFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoDate dt= new DaoDate();
		DaoFlight df = new DaoFlight();
		int i=0;
		try {
			ArrayList<String> tables = dt.returnAllDateId();
			for(String table : tables)
			{
				i+=df.updateTable(table,10);
			}
			System.out.println(i);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
