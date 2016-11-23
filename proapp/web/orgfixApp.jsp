<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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

<%!     
        String workSlot,workDay,eEmail;
        int orgID,empID;
        %>

        <%
        
         empID=Integer.parseInt(request.getParameter("empID"));
         orgID=Integer.parseInt(session.getAttribute("ID").toString());
         
         session.setAttribute("empID",empID);
    
      %>
<body>
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
			<h2 id="detail">Date selector</h2>
			<div class="content">

                <form id="searchform" method="post" action="orgappAvail.jsp">
					<fieldset>
                         <p>Please select a date to take appointment and check the availability.</p><br><br>
                    </fieldset><br>
                       <center>
                        <table width="300" cellspacing=0 border="0" cellpadding="0" align="center" summary="">

	  <tr>
	  	<td>
	  		<input type="Text" name="demo1" id="demo1" maxlength="25" size="25"><a href="javascript:NewCal('demo1','ddmmyyyy',true,24,'resultset')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
            <span class="descriptions">pick a date..</span>
	  	</td>
	  </tr>
	  <tr>
	  	<td>
	  	      <br>

	  	</td>
	  </tr>
</table>

    <input type="submit" value="Check Available" />
    </center>

				</form>
			</div>
		</div>
</div>
 </body>
</html>
