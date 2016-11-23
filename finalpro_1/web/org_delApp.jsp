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
 <link rev="made" href="mailto:contact@rainforestnet.com">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="generator" content="NoteTab Light 4.9">
  <meta name="author" content="TengYong Ng">
  <meta name="description" content="">
  <meta name="keywords" content="">

<script language="javascript" type="text/javascript" src="C:\Documents and Settings\a\Desktop\cal.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
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
                    <fieldset>
            <p>Enter employee ID and dates between which you want to delete appointments.Input same date for one day.</p><br><br>
            <form action="org_delApp_list.jsp" method="post" name="org_delApp">
                <table>
                <tr><td>Employee ID: </td><td><input type="text" name="empID" value="" /></td><td><a href="view_empID.jsp">view employee ID</a></td></tr>
                <tr><td>From date : </td><td><input type="Text" name="fromdate" id="demo1"><a href="javascript:NewCal('demo1','ddmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
            </td></tr>
                <tr><td>To date : </td><td><input type="text" name="todate" id="demo2" value="" /><a href="javascript:NewCal('demo2','ddmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td></tr>
                </table>
                <input type="submit" value="SUBMIT" />
            </form>
                    </fieldset>
            </center>
            </div>
		</div>
</div>
     </body>
</html>
