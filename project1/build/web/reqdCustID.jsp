<%--
    Document   : try2
    Created on : Apr 27, 2008, 12:03:28 PM
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

			if (document.mainForm.fname.value == "")
				{
					alert("Please enter employee's first name.");
					document.mainForm.fname.focus();
					return false;
				}
             if (document.mainForm.empID.value == "")
				{
					alert("Please enter employee ID.");
					document.mainForm.empID.focus();
					return false;
				}
			if (document.mainForm.salary.value == "")
				{
					alert("Please enter employee's salary.");
					document.mainForm.salary.focus();
					return false;
				}
			if (document.mainForm.fees.value =="")
				{
					alert("Please enter employee's fees per appointment.");
					document.mainForm.fees.focus();
					return false;
				}
return true;
	}
	function checkEmail()
	{
		var email=document.getElementById("emailaddress");
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (!filter.test(email.value))
			{
				 alert("Please provide a valid email address");
				email.focus;
				return false;
			}
	}
	-->
</SCRIPT>
        <% String  slot=request.getParameter("selectslot");
        session.setAttribute("slot", slot); %>
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
            User Profile</h2>
			<div class="content">
            <form name="Userprofile" id="searchform" action="servlet_orgappAvail.jsp"  method="post">
            <fieldset>
             <table align="center">
              <tr>
            <td>Name:</td><td><input id="searchinput" type="text" name="username" value="" /></td>
            </tr>
            <tr>
            <td>Sex:</td><td><select  name="usersex" id="searchselect">
                <option>M</option>
                <option>F</option>
            </select></td>
            </tr>
             <tr>
            <td>Date Of Birth(dd/mm/yyyy):</td>
            <td>
                
                <input type="text" name="userDOB" id="searchinput"/>
                </td>
            </tr>
              
              
              <tr><td>Permanent Address:</td><td><input id="searchinput" type="text" name="userpadd" value="" /></td></tr>
              <tr><td>Contact:</td><td><input id="searchinput" type="text" name="usertel"/></td></tr>
              
           </table>
           </fieldset>
             <br>
               <center>
              <input type="submit" value="SUBMIT" />
              <input type="reset" value="CANCEL" />
              </center>
             </form>
        </div>
		</div>
</div>
    </body>
</html>
