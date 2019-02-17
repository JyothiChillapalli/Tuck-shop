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
 h1, h2, h3, h4, h5, h6 {
                font-family: sans-serif;
                color: black;
               
            }
</style>
<body bgcolor="#18BBF0">


  <div class="topnav" >
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
String sql = "Select * from mydb.`order`";
st = con.prepareStatement(sql);
rs = st.executeQuery();
String zero = "-";
int counter = 1;
while(rs.next())
{
	if(rs.getString(3).equals(zero) && rs.getString(4).equals(zero) && rs.getString(5).equals(zero)&& rs.getString(6).equals(zero)&& 
			rs.getString(7).equals(zero)&& rs.getString(8).equals(zero)&& rs.getString(9).equals(zero)&& rs.getString(10).equals(zero)&&
			rs.getString(11).equals(zero)&& rs.getString(12).equals(zero)&& rs.getString(13).equals(zero)&& rs.getString(14).equals(zero)&&
			rs.getString(15).equals(zero)&& rs.getString(16).equals(zero)&& rs.getString(17).equals(zero)&& rs.getString(18).equals(zero)&& 
			rs.getString(19).equals(zero)&& rs.getString(20).equals(zero) && rs.getString(21).equals(zero)&& rs.getString(22).equals(zero)&& 
			rs.getString(23).equals(zero)&& rs.getString(24).equals(zero)&&rs.getString(25).equals(zero)&& rs.getString(26).equals(zero)
			&& rs.getString(27).equals(zero) && rs.getString(28).equals(zero)&&rs.getString(29).equals(zero)&& rs.getString(30).equals(zero)&&
			rs.getString(31).equals(zero)&& rs.getString(32).equals(zero)&&rs.getString(33).equals(zero)&& rs.getString(34).equals(zero)&& 
			rs.getString(35).equals(zero)&&	rs.getString(36).equals(zero)&&rs.getString(37).equals(zero)&& rs.getString(38).equals(zero)
			&& rs.getString(39).equals(zero)&& rs.getString(40).equals(zero)&&rs.getString(41).equals(zero)&& rs.getString(42).equals(zero)&&
			rs.getString(43).equals(zero)&& rs.getString(44).equals(zero)&&rs.getString(45).equals(zero)&& rs.getString(46).equals(zero)&&
			rs.getString(47).equals(zero)&& rs.getString(48).equals(zero)&&rs.getString(49).equals(zero)&& rs.getString(50).equals(zero)&& 
			rs.getString(51).equals(zero)&& rs.getString(52).equals(zero)&&rs.getString(53).equals(zero)&& rs.getString(54).equals(zero)&&
			rs.getString(55).equals(zero)&& rs.getString(56).equals(zero)&& rs.getString(57).equals(zero)&& rs.getString(58).equals(zero)&&
			rs.getString(59).equals(zero)&& rs.getString(60).equals(zero)&&rs.getString(61).equals(zero)&& rs.getString(62).equals(zero)&&
			rs.getString(63).equals(zero)&& rs.getString(64).equals(zero)&& rs.getString(65).equals(zero)&& rs.getString(66).equals(zero)&&
			rs.getString(67).equals(zero)&& rs.getString(68).equals(zero)&& rs.getString(69).equals(zero)&& rs.getString(70).equals(zero)
			&& rs.getString(71).equals(zero)&& rs.getString(72).equals(zero)&& rs.getString(73).equals(zero)&& rs.getString(74).equals(zero))
		System.out.println("All Entries are zero");
	else
	{
	%>
	<h4>ORDER NO: <%= counter %></h4>
	<%
	counter++;
	%>
	<h4>USERNAMER: <%= rs.getString(1) %></h4>
	<h4>ORDER ID: <%= rs.getString(2) %></h4>
	<%
	if(rs.getString(3).equals(zero)){}else
	{
		%><h5> BOOKS - SUNDARAM - 50PAGES: <%=rs.getString(3) %></h5><% 
	}
	if(rs.getString(4).equals(zero)){}else
	{
		%><h5> BOOKS - SUNDARAM - 100PAGES: <%=rs.getString(4) %></h5><% 
	}
	if(rs.getString(5).equals(zero)){}else
	{
		%><h5> BOOKS - SUNDARAM - 200PAGES: <%=rs.getString(5) %></h5><% 
	}
	if(rs.getString(6).equals(zero)){}else
	{
		%><h5> BOOKS - CLASSMATE - 50PAGES: <%=rs.getString(6) %></h5><% 
	}
	if(rs.getString(7).equals(zero)){}else
	{
		%><h5> BOOKS - CLASSMATE - 100PAGESK: <%=rs.getString(7) %></h5><% 
	}
	if(rs.getString(8).equals(zero)){}else
	{
		%><h5> BOOKS - CLASSMATE - 200PAGES: <%=rs.getString(8) %></h5><% 
	}
	if(rs.getString(9).equals(zero)){}else
	{
		%><h5>BOOKS - CAMLIN - 50PAGES: <%=rs.getString(9) %></h5><% 
	}
	if(rs.getString(10).equals(zero)){}else
	{
		%><h5>BOOKS - CAMLIN - 100PAGES: <%=rs.getString(10) %></h5><% 
	}
	if(rs.getString(11).equals(zero)){}else
	{
		%><h5>BOOKS - CAMLIN - 200PAGES: <%=rs.getString(11) %></h5><% 
	}
	if(rs.getString(12).equals(zero)){}else
	{
		%><h5>PEN - PARKER - GEL - BLUE: <%=rs.getString(3) %></h5><% 
	}
	if(rs.getString(13).equals(zero)){}else
	{
		%><h5>PEN - PARKER - GEL - BLACK: <%=rs.getString(13) %></h5><% 
	}
	if(rs.getString(14).equals(zero)){}else
	{
		%><h5>PEN - PARKER - GEL - RED: <%=rs.getString(14) %></h5><% 
	}
	if(rs.getString(15).equals(zero)){}else
	{
		%><h5>PEN - PARKER - BALL - BLUE: <%=rs.getString(15) %></h5><% 
	}
	if(rs.getString(16).equals(zero)){}else
	{
		%><h5>PEN - PARKER - BALL - BLACK: <%=rs.getString(16) %></h5><% 
	}
	if(rs.getString(17).equals(zero)){}else
	{
		%><h5>PEN - PARKER - BALL - RED: <%=rs.getString(17) %></h5><% 
	}
	if(rs.getString(18).equals(zero)){}else
	{
		%><h5>PEN - LINC - GEL - BLUE: <%=rs.getString(18) %></h5><% 
	}
	if(rs.getString(19).equals(zero)){}else
	{
		%><h5>PEN - LINC - GEL - BLACK: <%=rs.getString(19) %></h5><% 
	}
	if(rs.getString(20).equals(zero)){}else
	{
		%><h5>PEN - LINC - GEL - RED: <%=rs.getString(20) %></h5><% 
	}
	if(rs.getString(21).equals(zero)){}else
	{
		%><h5>PEN - LINC - BALL - BLUE: <%=rs.getString(21) %></h5><% 
	}
	if(rs.getString(22).equals(zero)){}else
	{
		%><h5>PEN - LINC - BALL - BLACK: <%=rs.getString(22) %></h5><% 
	}
	if(rs.getString(23).equals(zero)){}else
	{
		%><h5>PEN - LINC - BALL - RED: <%=rs.getString(23) %></h5><% 
	}
	if(rs.getString(24).equals(zero)){}else
	{
		%><h5>PEN - CELLO - GEL - BLUE: <%=rs.getString(24) %></h5><% 
	}
	if(rs.getString(25).equals(zero)){}else
	{
		%><h5>PEN - CELLO  - GEL - BLACK: <%=rs.getString(25) %></h5><% 
	}
	if(rs.getString(26).equals(zero)){}else
	{
		%><h5>PEN - CELLO  - GEL - RED: <%=rs.getString(26) %></h5><% 
	}
	if(rs.getString(27).equals(zero)){}else
	{
		%><h5>PEN - CELLO - BALL - BLUE: <%=rs.getString(27) %></h5><% 
	}
	if(rs.getString(28).equals(zero)){}else
	{
		%><h5>PEN - CELLO - BALL - BLACK: <%=rs.getString(28) %></h5><% 
	}
	if(rs.getString(29).equals(zero)){}else
	{
		%><h5>PEN - CELLO - BALL - RED: <%=rs.getString(29) %></h5><% 
	}
	if(rs.getString(30).equals(zero)){}else
	{
		%><h5>FILES - STICK-BLUE: <%=rs.getString(30) %></h5><% 
	}
	if(rs.getString(31).equals(zero)){}else
	{
		%><h5>FILES - STICK  - YELLOW: <%=rs.getString(31) %></h5><% 
	}
	if(rs.getString(32).equals(zero)){}else
	{
		%><h5>FILES - STICK  - RED: <%=rs.getString(32) %></h5><% 
	}
	if(rs.getString(33).equals(zero)){}else
	{
		%><h5>FILES - PUNCH -BLUE: <%=rs.getString(33) %></h5><% 
	}
	if(rs.getString(34).equals(zero)){}else
	{
		%><h5>FILES  - PUNCH - YELLOW: <%=rs.getString(34) %></h5><% 
	}
	if(rs.getString(35).equals(zero)){}else
	{
		%><h5>FILES  - PUNCH - RED: <%=rs.getString(35) %></h5><% 
	}
	if(rs.getString(36).equals(zero)){}else
	{
		%><h5>FILES - BOX - BLUE: <%=rs.getString(36) %></h5><% 
	}
	if(rs.getString(37).equals(zero)){}else
	{
		%><h5>FILES - BOX - YELLOW: <%=rs.getString(37) %></h5><% 
	}
	if(rs.getString(38).equals(zero)){}else
	{
		%><h5>FILES - BOX -  RED: <%=rs.getString(38) %></h5><% 
	}
	if(rs.getString(39).equals(zero)){}else
	{
		%><h5>MARKER - FABER-CASTEL -BLUE: <%=rs.getString(39) %></h5><% 
	}
	if(rs.getString(40).equals(zero)){}else
	{
		%><h5>MARKER - FABER-CASTEL - BLACK: <%=rs.getString(40) %></h5><% 
	}
	if(rs.getString(41).equals(zero)){}else
	{
		%><h5>MARKER - FABER-CASTEL  - RED: <%=rs.getString(41) %></h5><% 
	}
	if(rs.getString(42).equals(zero)){}else
	{
		%><h5>MARKER - CELLO -BLUE: <%=rs.getString(42) %></h5><% 
	}
	if(rs.getString(43).equals(zero)){}else
	{
		%><h5>MARKER - CELLO - BLACK: <%=rs.getString(43) %></h5><% 
	}
	if(rs.getString(44).equals(zero)){}else
	{
		%><h5>MARKER  - CELLO - RED: <%=rs.getString(44) %></h5><% 
	}
	if(rs.getString(45).equals(zero)){}else
	{
		%><h5>MARKER - CAMLIN - BLUE: <%=rs.getString(45) %></h5><% 
	}
	if(rs.getString(46).equals(zero)){}else
	{
		%><h5>MARKER - CAMLIN - BLACK: <%=rs.getString(46) %></h5><% 
	}
	if(rs.getString(47).equals(zero)){}else
	{
		%><h5>MARKER - CAMLIN -  RED: <%=rs.getString(47) %></h5><% 
	}
	if(rs.getString(48).equals(zero)){}else
	{
		%><h5>PENCIL - NATRAJ -5: <%=rs.getString(48) %></h5><% 
	}
	if(rs.getString(49).equals(zero)){}else
	{
		%><h5>PENCIL - NATRAJ - 10: <%=rs.getString(49) %></h5><% 
	}
	if(rs.getString(50).equals(zero)){}else
	{
		%><h5>PENCIL - NATRAJ  - 20: <%=rs.getString(50) %></h5><% 
	}
	if(rs.getString(51).equals(zero)){}else
	{
		%><h5>PENCIL - CLASSMATE -5: <%=rs.getString(51) %></h5><% 
	}
	if(rs.getString(52).equals(zero)){}else
	{
		%><h5>PENCIL - CLASSMATE - 10: <%=rs.getString(52) %></h5><% 
	}
	if(rs.getString(53).equals(zero)){}else
	{
		%><h5>PENCIL  -CLASSMATE - 20: <%=rs.getString(53) %></h5><% 
	}
	if(rs.getString(54).equals(zero)){}else
	{
		%><h5>PENCIL - APSARA - 5: <%=rs.getString(54) %></h5><% 
	}
	if(rs.getString(55).equals(zero)){}else
	{
		%><h5>PENCIL - APSARA- 10: <%=rs.getString(55) %></h5><% 
	}
	if(rs.getString(56).equals(zero)){}else
	{
		%><h5>PENCIL - APSARA -  20: <%=rs.getString(56) %></h5><% 
	}
	if(rs.getString(57).equals(zero)){}else
	{
		%><h5>ERASERS - NATRAJ -STANDARD: <%=rs.getString(57) %></h5><% 
	}
	if(rs.getString(58).equals(zero)){}else
	{
		%><h5>ERASERS - NATRAJ  - LONG: <%=rs.getString(58) %></h5><% 
	}
	if(rs.getString(59).equals(zero)){}else
	{
		%><h5>ERASERS - NATRAJ  - BOX: <%=rs.getString(59) %></h5><% 
	}
	if(rs.getString(60).equals(zero)){}else
	{
		%><h5>ERASERS - CLASSMATE -STANDARD: <%=rs.getString(60) %></h5><% 
	}
	if(rs.getString(61).equals(zero)){}else
	{
		%><h5>ERASERS  - CLASSMATE - LONG: <%=rs.getString(61) %></h5><% 
	}
	if(rs.getString(62).equals(zero)){}else
	{
		%><h5>ERASERS  - CLASSMATE - BOX: <%=rs.getString(62) %></h5><% 
	}
	if(rs.getString(63).equals(zero)){}else
	{
		%><h5>ERASERS - APSARA - STANDARD: <%=rs.getString(63) %></h5><% 
	}
	if(rs.getString(64).equals(zero)){}else
	{
		%><h5>ERASERS - APSARA - LONG: <%=rs.getString(64) %></h5><% 
	}
	if(rs.getString(65).equals(zero)){}else
	{
		%><h5>ERASERS - APSARA -  BOX: <%=rs.getString(65) %></h5><% 
	}
	if(rs.getString(66).equals(zero)){}else
	{
		%><h5>RULER - NATRAJ -15CM: <%=rs.getString(66) %></h5><% 
	}
	if(rs.getString(67).equals(zero)){}else
	{
		%><h5>RULER - NATRAJ - 30CM: <%=rs.getString(67) %></h5><% 
	}
	if(rs.getString(68).equals(zero)){}else
	{
		%><h5>RULER - NATRAJ  - 50CM: <%=rs.getString(68) %></h5><% 
	}
	if(rs.getString(69).equals(zero)){}else
	{
		%><h5>RULER - CAMLIN -15CM: <%=rs.getString(69) %></h5><% 
	}
	if(rs.getString(70).equals(zero)){}else
	{
		%><h5>RULER - CAMLIN - 30: <%=rs.getString(70) %></h5><% 
	}
	if(rs.getString(71).equals(zero)){}else
	{
		%><h5>RULER  -CAMLIN - 50: <%=rs.getString(71) %></h5><% 
	}
	if(rs.getString(72).equals(zero)){}else
	{
		%><h5>RULER - APSARA - 15: <%=rs.getString(73) %></h5><% 
	}
	if(rs.getString(73).equals(zero)){}else
	{
		%><h5>PENCIL - APSARA- 30: <%=rs.getString(73) %></h5><% 
	}
	if(rs.getString(74).equals(zero)){}else
	{
		%><h5>PENCIL - APSARA -  50: <%=rs.getString(74) %></h5><% 
	}
	
	
	%><h5>--------------------------------------------------</h5><%
	}
}
 %>
 
</body>
</html>