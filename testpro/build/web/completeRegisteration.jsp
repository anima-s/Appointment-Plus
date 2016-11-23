<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

			if (document.mainForm.oname.value == "")
				{
					alert("Please enter name of organisation in capital letters.");
					document.mainForm.oname.focus();
					return false;
				}			
			if (document.mainForm.regnum.value == "")
				{
					alert("Please enter registeration number.");
					document.mainForm.regnum.focus();
					return false;
				}
			if (document.mainForm.loc.value == "")
				{
					alert("Please enter location of your organisation.");
					document.mainForm.loc.focus();
					return false;
				}
			if (document.mainForm.name_certify.value == "")
				{
					alert("Please enter certifying authority.");
					document.mainForm.name_certify.focus();
					return false;
				}

			if (document.mainForm.staff_capacity.value == "")
				{
					alert("Please enter staff capacity.");
					document.mainForm.staff_capacity.focus();
					return false;
				}
			if (document.mainForm.numofslot.value == "")
				{
					alert("Please enter number of slots.");
					document.mainForm.numofslot.focus();
					return false;
				}

			if (document.mainForm.workslot.value =="")
				{
					alert("Please enter workslots.");
					document.mainForm.workslot.focus();
					return false;
				}
		     if (document.mainForm.workdays.value =="")
            	{
					alert("Please enter workdays.");
					document.mainForm.workdays.focus();
					return false;
				}
                if (document.mainForm.telcode.value =="")
				{
					alert("Please enter telephone code.");
					document.mainForm.telcode.focus();
					return false;
				}
		     if (document.mainForm.telnum.value =="")
            	{
					alert("Please enter telephone number.");
					document.mainForm.telnum.focus();
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
			<h2 id="profile">Registeration</h2>
			<div class="content">
<p><strong>Please fill the organisation details.</strong></p><br><br>
                <form id="searchform" method="post" action="./insertcompleteReg.jsp" name="mainForm">
					<fieldset>
                     <table align="center">
                 <tr><td>Name Of Organisation:</td><td><input id="searchinput" type="text" name="oname"  />
                 <DIV id="settingText">capital letters only.</DIV></td></tr>
              <tr><td>Registeration No.:</td><td><input id="searchinput" type="text" name="regnum" size="22" /></td></tr>
              <tr>
                     <td>Catagory:</td><td>
                     <SELECT name="catagory" id="searchselect">
                         <OPTION>Hospital</OPTION>
                         <OPTION>Law Consultants</OPTION>
                         <OPTION>Fitness Center</OPTION>
                     </SELECT>
                     </td>
                   </tr>
                   <tr><td>Location:</td><td><textarea name="loc" rows="4" cols="24"></textarea></td></tr>
              <tr><td>National Certified:</td>
              <td>
                <select name="certify" style="width: 215px;	margin-bottom: 5px;">
                    <option>yes</option>
                    <option>no</option>
                </select>
              </td></tr>
            <tr><td>Certifying Authority:</td><td><input id="searchinput" type="text" name="name_certify"/></td></tr>
            <tr><td>Staff Capacity:</td><td><input id="searchinput" type="text" name="staff_capacity"/></td></tr>
            <tr><td>No. Of Working Slots:</td><td><input id="searchinput" type="TEXT" name="numofslot"/></td></tr>
            <tr><td>Working Slots:</td><td><textarea name="workslot" rows="2" cols="24"></textarea><DIV id="settingText">e.g.(10:30-12:30,13:25-15:45).</DIV></td></tr>
            <tr><td>Working Days:</td><td><input id="searchinput" type="TEXT" name="workdays"/><DIV id="settingText">e.g.(fri,sat,sun).</DIV></td></tr>
            <tr><td>Telephone:</td><td><input style="width: 60px;margin-bottom: 5px;" type="TEXT" name="telcode"/>
            <input style="width: 140px;margin-bottom: 5px;" type="TEXT" name="telnum"/><DIV id="settingText">code and number.</DIV></td></tr>

              </table><br><hr>
                </fieldset><br>
                       <center>
               <table>
               <tr>
                   <td>
                       <form action="./insertcompleteReg.jsp" method="post">
                           <input type="submit" value="  NEXT  " name="but1" />
                       </form>
                   </td>
                   <td>
                       <form action="index.jsp" method="post">
                           <input type="submit" value="  EXIT  " name="but2" />
                       </form>
                   </td>
               </tr>
               </table>
              </center> 
				</form>
			</div>
		</div>
</div>

</body>
</html>