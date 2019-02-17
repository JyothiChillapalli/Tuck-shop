<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head><style>
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    width: 50%;
    opacity: 0.8;

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.bg {
    /* The image used */
    background-image: url("images/bg.png");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
.topnav-right {
  float: right;
}
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
     background-color: white;
}

#customers td, #customers th {
    border: 1px solid #f2f2f2;
    padding: 8px;
}

#customers tr:hover {background-color: #f2f2f2;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
<body background = images/bg.png>

  <div class="topnav">
   <a href="Admin.jsp">ADMIN</a>
  <a href="alluserinfo.jsp">USER INFO</a>
  	<div class="topnav-right">
  		<a href="logout.jsp">Log Out</a>
	</div>
  </div>
<%@ page import="com.*" %>
<%@ page import="java.sql.ResultSet" %>
<%
Connection C = new Connection();
java.sql.Connection con = C.dbConnect();
java.sql.PreparedStatement st = null;
ResultSet rs = null;
String sql = "Select Username,OrderId,books50,books100,books200,bookcm50,bookcm100,bookcm200,bookc50,bookc100,bookc200 from mydb.`order`";
st = con.prepareStatement(sql);
rs = st.executeQuery();
String zero = "0";%>
 <TABLE id="customers" BORDER="1">
            <TR>
                <TH>Username</TH>
                <TH>OrderId</TH>
                <TH>books50</TH>
                <TH>books100</TH>
                <TH>books200</TH>
                <TH>bookcm50</TH>
                <TH>bookcm100</TH>
                <TH>bookcm200</TH>
                <TH>bookc50</TH>
                <TH>bookc100</TH>
                <TH>bookc200</TH>
           </TR>
           <% while(rs.next()){
				if(rs.getString(3).equals(zero) && rs.getString(4).equals(zero) && rs.getString(5).equals(zero)&& rs.getString(6).equals(zero)&& rs.getString(7).equals(zero)&& rs.getString(8).equals(zero)&& rs.getString(9).equals(zero)&& rs.getString(10).equals(zero)&& rs.getString(11).equals(zero))
					System.out.println("All Entries are zero");
				else
				{
            	%>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></td>
                <TD> <%= rs.getString(3) %></td>
                <TD> <%= rs.getString(4) %></td>
                <TD> <%= rs.getString(5) %></td>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></td>
                <TD> <%= rs.getString(8) %></td>
                <TD> <%= rs.getString(9) %></td>
                <TD> <%= rs.getString(10) %></td>
                <TD> <%= rs.getString(11) %></td>
                
           </TR>
            <%} } %>
        </TABLE>
</body>
</html>