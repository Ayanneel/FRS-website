package com.wipro.frs.service;
import java.util.ArrayList;

import com.wipro.frs.bean.*;
import com.wipro.frs.dao.*;

public class AdminControls 
{
	public boolean addFlight(int flightId,String source, String destination,float duration, int totalSeats, float distance, String arrTime, String depTime, int price) throws Exception
	{
		try {
				int count=0;
				DaoDate dd = new DaoDate();
				DaoFlight df = new DaoFlight();
				FlightBean f = new FlightBean();
				f.setFlightId(flightId);
				f.setTotalSeats(totalSeats);
				f.setArrTime(arrTime);
				f.setDepTime(depTime);
				f.setDistance(distance);
				f.setDuration(duration);
				f.setSource(source);
				f.setDestination(destination);
				f.setPrice(price);
				ArrayList<String> allTables = dd.returnAllDateId();
				allTables.add("flight");
				for(String tableName: allTables)
				{
					if(df.insertFlight(f, tableName)==1)
						count++;
					else
						System.out.println("error @ insertion"+tableName);
					
				}
				if(count==allTables.size())
					return true;
				return false;
				
			}
		catch (Exception e)
		{
			System.out.println("mistake @ adding flights");
			System.out.println(e);
			 return false;
		}
			
		
	}
	public boolean deleteFlight(int flightId) throws Exception
	{
		try 
		{
			int count=0;
			DaoDate dd = new DaoDate();
			DaoFlight df = new DaoFlight();
			ArrayList<String>tables =dd.returnAllDateId();
			tables.add("flight");
			for(String table : tables)
			{
				if(df.deleteFlight(flightId,table)==1)
					count++;
				else
					System.out.println("error at deleting flight"+ table);
			}
			if(count==tables.size())
				return true;
			return false;
			
		}
		catch(Exception e)
		{
			System.out.println("mistake @ deleteFlight @ AdminControls"+e);
			return false;
		}
		
	}
	public int dropTable() throws Exception
	{
		DaoFlight df = new DaoFlight();
		return df.dropTable();
	}
	public void deleteRow(int flightId) throws Exception
	{
		try 
		{
			DaoFlight df = new DaoFlight();
			DaoDate dd = new DaoDate();
			System.out.println(flightId);
			ArrayList<String> tables = dd.returnAllDateId();
			tables.add("flight");
			for(String table : tables)
			{
				df.deleteRow(flightId, table);
			}
		}
		catch (Exception e)
		{
			System.out.println("lalallalala"+e);
			
		}
	}
	public boolean editFlight(int flightId,String source, String destination,float duration, int totalSeats, float distance, int price) throws Exception
	{
		try
		{
			int c=0;
			DaoFlight df = new DaoFlight();
			DaoDate dd = new DaoDate();
			FlightBean f = new FlightBean();
			f.setFlightId(flightId);
			f.setDestination(destination);
			f.setDuration(duration);
			f.setDistance(distance);
			f.setPrice(price);
			f.setSource(source);
			f.setTotalSeats(totalSeats);
			ArrayList <String> tables = dd.returnAllDateId();
			tables.add("flight");
			for(String table : tables)
			{
				c+=df.updateFlight(f,table);
			}
			if(c==tables.size())
				return true;
			else
				return false;	
		}
		catch (Exception e)
		{
			System.out.println("hmm "+e);
			return false;
		}
	}
	
}
