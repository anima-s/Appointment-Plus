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
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>
			<li><a href="#">Galleries</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">
            User Details</h2>
            
            <div class="content">
                <h3>Must Read</h3>
                <p>&ldquo;If you want to take an appointment your Usertype is <strong>User</strong> <br>and if you want to provide appointments your Usertype is <strong>Organisation.</strong>
                      <br>Enter <strong>any password</strong> you wish and it will be fixed as <br>
                          your login password.The password must contain atleast <br>
                          five characters.Enter your email for identification.&ldquo;</p>
                <form id="searchform" method="post" action="servletNewUserSignup.jsp" name="newuser" onSubmit="return validateCreateAccount();">
					<fieldset>
                        <br>
                        <table>
                    <tr><td>Enter Email:</td><td><input id="emailaddress" type="text" name="Usermail" style="width: 215px;margin-bottom: 5px;" /></td></tr>
                    <tr><td>Enter Password:</td><td><input id="searchinput" type="text" name="Userpwd"/></td></tr>
                    <tr><td>Retype Password:</td><td><input id="searchinput" type="text" name="Userpwd2"/></td></tr>
                    <tr><td>User Type:</td>
                    <td>
                        <select name="selectUsertype" id="searchselect">
                          <option>User</option>
                          <option>Organisation</option>                         
                      </select>
                        </td></tr>
                    </table>
                        <center><br>
                        <table>
                    <tr><td><form method="post" action="servletNewUserSignup.jsp"><input type="submit" value="Submit" /></form></td>
                    <td><form action="index.jsp"><input type="submit" value="  Exit  " /></form></td></tr>
                           </table>
                        </center>
					</fieldset>
				</form>
			</div>
		</div>
</div>
</body>
</html>
