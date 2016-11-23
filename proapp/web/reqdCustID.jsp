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
 <link rev="made" href="mailto:contact@rainforestnet.com">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="generator" content="NoteTab Light 4.9">
  <meta name="author" content="TengYong Ng">
  <meta name="description" content="">
  <meta name="keywords" content="">

<script language="javascript" type="text/javascript" src="C:\Documents and Settings\XP\Desktop\cal.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>
    <body>

        <% String  slot=request.getParameter("selectslot");
        session.setAttribute("slot", slot); %>
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
            <td>Date Of Birth:</td>
            <td>
                <input type="Text" name="userDOB" id="demo1" maxlength="30" size="30"><a href="javascript:NewCal('demo1','ddmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
            <span class="descriptions">select date..</span>
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
