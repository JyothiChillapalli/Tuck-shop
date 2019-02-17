<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="1;url=http://localhost:8000/OnlineStationary" />
<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("images/ty.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
</head>
<SCRIPT type="text/javascript">
function noBack() { window.history.forward(); }
</SCRIPT>
<body onload="noBack();">
<div class="bg"></div>

<%@ page import="com.*" %>
<%Functionalities F = new Functionalities();
F.clearCart();%>

</body>
</html>