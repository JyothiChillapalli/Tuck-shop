<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head><style>
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

button:hover {
    opacity: 0.8;
}

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
h2{
color: white;
}
</style>
<body background = images/bg.png>

  <div class="topnav">
  <a href="products.jsp">Home</a>
  <a class="active"href="Cart.jsp">Cart</a>
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
String orderid = (String)request.getAttribute("ID");
String sql = "Select QTY from cart where Objects='login'";
st = con.prepareStatement(sql);
rs = st.executeQuery();
String uname = "null";
while(rs.next())
uname = rs.getString(1);
sql = "Select Name, Contact from userinfo where Username = '"+uname+"'";
st = con.prepareStatement(sql);
rs = st.executeQuery();
while(rs.next())
{
	%>
	<h2>Name: <%= rs.getString(1) %></h2>
	<h2>Contact: <%= rs.getString(2) %></h2>
	<%
}
sql = "Select * from cart";
st = con.prepareStatement(sql);
rs = st.executeQuery();
%>
<h2><font color="white">ORDER ID = <%= orderid %></font></h2>
 <TABLE id="customers" BORDER="1">
            <TR>
                <TH>Object</TH>
                <TH>QTY</TH>
                <TH>Total Price</TH>
           </TR>
            <% while(rs.next()){
            	String object = rs.getString(1);
            	String value = rs.getString(2);
            	String price = rs.getString(3);
            	if(object.equals("login"))
            		continue;
            	else%>
            <TR>
                <TD> <%= object %></td>
                <TD> <%= value %></TD>
                <TD> <%= price %></TD>
           </TR>
            <%}
            Functionalities F= new Functionalities();
            F.clearCart();
            %>
        </TABLE>
</body>
</html>