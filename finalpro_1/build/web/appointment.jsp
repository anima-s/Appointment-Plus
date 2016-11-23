<%-- 
    Document   : appointment
    Created on : Apr 13, 2008, 8:01:39 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<h2><a href="">Manage Your Appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class="active"><a href="about.jsp" target="top">About</a></li>
			<li class="active"><a href="events.jsp" target="top">Events</a></li>
			<li class="active"><a href="contacts.jsp" target="top">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">
            Appointments</h2>
			<div class="content">
                <center>
            <h3>What do you want to do?</h3><br><br>                          
            <a href="specialwiseApp.jsp">take an appointment</a><br>
            <a href="changeApp.jsp">change an appointment</a><br>
            <a href="deleteApp_list.jsp">cancel an appointment</a><br>           
            <a href="viewUserinbox.jsp">view my appointments</a><br>
             <a href="updateUserprofile.jsp">update my profile</a><br>
            </center>
                <br><br><br>
                <a href="deleteAccount.jsp" style="float:left;color:purple">Delete Account</a>
            </div>
		</div>
</div>
     </body>
</html>
