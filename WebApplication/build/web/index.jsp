<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
<script language="javascript" type="text/javascript" src="C:\Documents and Settings\a\Desktop\about.js">
//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com
</script>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a>Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>			
			<li class="active"><a href="about.jsp" target="top">About</a></li>
			<li class="active"><a href="events.jsp" target="top">Events</a></li>
			<li class="active"><a href="contacts.jsp" target="top">Contact</a></li>
		</ul>
	</div>
</div>
<div id="page">
	<div id="content">
		<div style="margin-bottom: 20px;">
			<h1 class="title">Welcome to Our Website!</h1>
			<p><strong>Appointment+.com</strong> is the only site that manages your headaches of taking and remembering appointments.With this site you need not to go the spot to take appointments, no phone calls,no sticky notes,no reminders and no pain of refixing them each time.<em>Enjoy :)</em></p>
			<h2>The most powerfull and easy searching procedure</h2>
			<p>We provide you the option of searching the required catagory of interest and that too within few seconds.It manages your appointments itself and keeps you aware of latest updates in your appointments.</p>
			<blockquote>
                <h3>What you can do</h3>
                <p>&ldquo;manage appointments&ldquo;<br>&ldquo;search organisations or people for appointments&ldquo;<br>&ldquo;manage your profile&ldquo;</p>
			</blockquote>
		</div>
		<div>&nbsp;</div>
		
	</div>
	<!-- end content -->
	<div id="sidebar">
		
		<div id="news" class="boxed">
			<h2 class="title">User Login</h2>
			<div class="content">

				<form id="searchform" method="post"  name="loginform" action="servletIndex.jsp">
					<fieldset>
					UserID<input id="searchinput" type="text" name="Usernameinput" value="" />
					Password<input id="searchinput" type="password" name="Passwordinput" value="" />
                    Usertype<select id="searchinput" type="text" name="Usertypeinput">
                        <option id="searchinput">User</option>
                        <option id="searchinput">Organisation</option>
                      
                    </select>
					<input id="searchsubmit" type="submit" value="Sign in" />
                    <br><p><a href="changepwd.jsp">Change password</a></p><br>
					<p><a href="newUserSignup.jsp">Sign in as new User</a></p>
					</fieldset>
				</form>

			</div>
		</div>
		<div  height="500" width="500" border="0">
    <img src="C:\Documents and Settings\a\Desktop\images[91].jpg"  height="290" width="290" border="0" alt="">
</div>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<div id="footer">

</div>
</body>
</html>
