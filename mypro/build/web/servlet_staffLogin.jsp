<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String empID;
        int ID,esno;
        %>

        <%
        empID=request.getParameter("empID");
        ID=Integer.parseInt(session.getAttribute("ID").toString());
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
     
      if(empID.equalsIgnoreCase("head"))
          response.sendRedirect("organisation.jsp");
      else
     {
      rs=st.executeQuery("select * from staffentry where empID='"+empID+"' and orgID="+ID+" ");
      if(rs.next())
          {
          rs=st.executeQuery("select * from staffentry where empID='"+empID+"' and orgID="+ID+" ");
            while(rs.next())
                esno=rs.getInt("sno");
            session.setAttribute("esno", esno);
            response.sendRedirect("staffTasks.jsp");
          }
      else
          {
          %>

<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Login Failed!</h2>
			<div class="content">
                <form id="searchform" method="post" action="index.jsp">
					<fieldset>
                        <p>You have entered a wrong employee ID please try again with correct ID.</p><br>
                        <center>                       
                        <input type="submit" value="  OK  " />
                        </center>
					</fieldset>
				</form>
			</div>
		</div>
</div>
</body>
</html>
          <%

          }
      }
      }catch(Exception e){out.println(e);}
%>