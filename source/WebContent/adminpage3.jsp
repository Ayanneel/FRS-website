<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.wipro.frs.bean.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wipro.frs.service.*"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="adminpage.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="adminpage.js"></script>
    <script>
    function defaultLoad(){
    	$('table tbody').hide();
    }
    </script>
</head>

<body onload="defaultLoad()">
    <div id="header" class="header">
        <div id="navbar" class="sticky">
                <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          Profile
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#changePasswordModal" data-toggle="modal" style="color:#000;font-size: 14px;">Change Password</a>
                          <a class="dropdown-item" href = "#logoutModal" data-toggle="modal" style="color:#000;font-size: 14px;">Logout</a>
                        </div>
                </div>
            <a href="adminpage3.jsp" class="active">Passenger Details</a>
            <a href="adminpage2.jsp" >Flight Details</a>
            <img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/PicsArt_08-18-10.22.33.png"
                height="40px" width="40px">
        </div>
    </div>

    <div class = "passenger">
    <div class="container">
        <div class="row">
            <div class="col-4"></div>    
            <div class="col-4">
                <input type="text" class="mb-2" id="myInput" placeholder="Search for names..">
                <center><button class="btn btn-info" onclick="search()">Search</button></center>
            </div>
            <div class="col-4"></div>    
        </div>
            
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b>Passenger Details</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover" id="passengerTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Flight Name</th>
                            <th>Booking Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<%
                    		Processing p =new Processing();
                    		ArrayList<PassengerDetailsBean> passengerList = p.returnPassengerDetails();
	                    	for(PassengerDetailsBean pdb : passengerList)
	                    		
	                    	{
	                    		out.println("<tr onclick=\"getRow(this)\">");
	                    		out.println("<td>"+pdb.getName()+"</td>");
	                    		out.println("<td>"+pdb.getFlightId()+"</td>");
	                    		out.println("<td>"+pdb.getAge()+"</td>");
	                    		
	                    		out.println("<td>"+pdb.getBookingDate()+"</td>");
	                    		out.println("</tr>");
	                    	}
                    	%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div id="changePasswordModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="changePasswordForm" >
                    <div class="modal-header">						
                        <h4 class="modal-title">Change Password</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>New Password</label>
                            <input type="password"  name="pwd1" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password"  name="pwd2" class="form-control" required>
                        </div>				
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancel">
                        <input type="button" onclick="changePass()" class="btn btn-primary" value="Save">
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <div id="logoutModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
              <form action = "LogoutServlet" method="post">
              <div class="modal-header">						
                        <h4 class="modal-title">Logout</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <h6>Confirm?</h6>
                     </div>
                     <div class="modal-footer">
                        <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-primary" value="Confirm">
                    </div>
              </form>
              </div>
              </div>
             </div>

</body>
</html>