<%--
    Document   : appointment
    Created on : Apr 13, 2008, 8:01:39 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Appointment+.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
    <body>

       <div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>

<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">
            Organisation</h2>
			<div class="content">
                <center>
            <h3>What do you want to do?</h3><br>
            <a href="viewClients.jsp">view my clients</a><br>
            <a href="">update my profile</a><br>
            </center>
                <br>
            </div>
		</div>
</div>
     </body>
</html>