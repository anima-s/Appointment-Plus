<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Center Stage
Version    : 1.0
Released   : 20070710
Description: A two-column, fixed-width template suitable for small business websites.

-->
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
                if (document.delAcc.deluserID.value == "")
				{
					alert("Please enter a username.");
					document.delAcc.deluserID.focus();
					return false;
				}
                 if (document.delAcc.delpwd1.value == "")
				{
					alert("Please enter a password.");
					document.delAcc.delpwd1.focus();
					return false;
				}
                 if (document.delAcc.delpwd2.value == "")
				{
					alert("Please retype the password.");
					document.delAcc.delpwd2.focus();
					return false;
				}
                if (document.delAcc.delpwd1.value != document.delAcc.delpwd2.value)
				{
					alert("The passwords you have entered do not match.  Please re-enter the passwords.");
					return false;
				}
               

			return true;
	}
	

	-->
</SCRIPT>
<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="logout.jsp">Home</a></li>
			<li class="active"><a href="index.jsp">Logout</a></li>
			<li><a href="#">About</a></li>
			
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Delete Account</h2>
			<div class="content">
                 <p>This will permanently delete your account.</p>
					<fieldset>
                         <form id="searchform" name="delAcc" method="post" action="./servletdeleteAcc.jsp" >
                        <table>
                        <tr><td>UserID</td><td><input id="emailaddress" type="text" name="deluserID" style="width: 210px;margin-bottom: 5px;" /></td></tr>
                    <tr><td>Password</td><td><input id="searchinput" type="text" name="delpwd1" value="" /></td></tr>
                    <tr><td>Retype Password</td><td><input id="searchinput" type="text" name="delpwd2" value="" /></td></tr>
                       </table>
<table align="center">
    <tr><td><form action="servletdeleteAcc.jsp"><input  type="submit" value="Delete" /></form></td>
    <td><form action="index.jsp"><input  type="submit" value="Cancel" /></form></td></tr>
</table>            
                           		</form>
               
    
 </fieldset>
			</div>
		</div>
</div>

</body>
</html>