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
<SCRIPT LANGUAGE="JavaScript">
<!--
function validateCreateAccount()
{

			if (document.org_delApp.empID.value == "")
				{
					alert("Please enter employee ID.");
					document.org_delApp.empID.focus();
					return false;
				}
             if (document.org_delApp.fromdate.value == "")
				{
					alert("Please enter date from which you want to delete appointments.");
					document.org_delApp.fromdate.focus();
					return false;
				}
			if (document.org_delApp.todate.value == "")
				{
					alert("Please enter date upto which you want to delete appointments.");
					document.org_delApp.todate.focus();
					return false;
				}
                return true;
}
	-->
</SCRIPT>
           <div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage Your Appointments</a></h2>
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
            Appointments</h2>
			<div class="content">
                <center>
                    <fieldset>
            <p>Enter employee ID and dates between which you want to delete appointments.Input same date for one day.</p><br><br>
            <form action="org_delApp_list.jsp" method="post" name="org_delApp">
                <table>
                <tr><td>Employee ID: </td><td><input type="text" name="empID" value="" /></td><td><a href="view_empID.jsp">view employee ID</a></td></tr>
                <tr><td>From date : </td><td><input type="text" name="fromdate" value="" /></td></tr>
                <tr><td>To date : </td><td><input type="text" name="todate" value="" /></td></tr>
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