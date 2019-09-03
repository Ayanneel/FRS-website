<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.wipro.frs.bean.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<PassengerDetailsBean> passList = (ArrayList<PassengerDetailsBean>)session.getAttribute("passengerList");
	for(PassengerDetailsBean pdb : passList)
	{
		out.println("<h5> "+ pdb.getName()+"&nbsp&nbsp"+pdb.getAge()+"&nbsp&nbsp"+pdb.getFlightId()+"&nbsp&nbsp"+pdb.getBookingDate());
		out.println("<BR>");
	}
%>

</body>
</html>