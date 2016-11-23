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

<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Your Everyday Alarm Clock</a></h2>
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
<div id="page">
<div style="float: left;width: 420px;padding-top: 8px;" class="boxed">
			<h2 style="width: 410px;height: 35px;padding: 10px 0 0 10px;background:#A4C0C8;border-top: 5px solid #5F919E;font-size: 136%;color: #144B6B;">Specialisation Based Search</h2>
			<div class="content">
                <fieldset><br>
                <form  method="post" action="specialList.jsp">
					
                        <center>
                        <table>
                        <tr><td colspan="2"><strong>Select the specialisation of specialist.</strong></td></tr><tr></tr><tr></tr>
                        <tr><td>Specialisation:</td>
                        <td><select name="special" id="searchselect">
                                    <option>eye specialist</option>
                                    <option>ear specialist</option>
                                    <option>heart surgeon</option>
                                    <option>regular trainer</option>
                        </select>
                        </td></tr>
                        <tr></tr>
                        <tr><td colspan="2">click for <a href="namewiseApp.jsp">name based search</a></td></tr>
                        </table>
                        <br>
                        <input  type="submit" value="SEARCH" />
                        </center>
					</form>
                    </fieldset>

				
			</div>
		</div>
<div id="sidebar">

		<div id="news" class="boxed">
<div  height="500" width="500" border="0">
    <img src="C:\Documents and Settings\a\My Documents\NetBeansProjects\finalpro_1\web\images\doc1.jpg"  height="290" width="290" border="0" alt="">
</div>
		</div>

	</div>
</div>
<div id="footer">

</div>

</body>
</html>