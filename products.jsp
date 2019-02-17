<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<style>
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
</style>
<SCRIPT type="text/javascript">
window.history.forward();
function noBack() { window.history.forward(); }
</SCRIPT>
<body background = images/bg.png onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">


  <div class="topnav">
  <a class="active">Home</a>
  <a href="Cart.jsp">Cart</a>
  	<div class="topnav-right">
  		
  		<a href="logout.jsp">Log Out</a>
	</div>
</div>
<p>
<p>
<Table>
<tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr>
<th><img src="images/books.jpeg" alt="books" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><img src="images/pens.jpeg" alt="pens" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><img src="images/files.jpg" alt="files" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><img src="images/marker.jpg" alt="files" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr>
<tr>
<th><button onclick="window.location.href='books.jsp'"><font color="white">Books</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><button onclick="window.location.href='pens.jsp'"><font color="white">Pens</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><button onclick="window.location.href='files.jsp'"><font color="white">Files</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><button onclick="window.location.href='markers.jsp'"><font color="white">Marker</font></button></th>
</tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr>
<th><img src="images/pencil.jpg" alt="pencil" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><img src="images/eraser.jpg" alt="eraser" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><img src="images/ruler.jpg" alt="ruler" height="250" width="250"></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr>
<tr>
<th><button onclick="window.location.href='pencils.jsp'"><font color="white">Pencils</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><button onclick="window.location.href='erasers.jsp'"><font color="white">Eraser</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th><button onclick="window.location.href='rulers.jsp'"><font color="white">Ruler</font></button></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr>
</Table>
</body>
</html>
