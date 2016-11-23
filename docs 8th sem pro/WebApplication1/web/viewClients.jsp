<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="staffdetail">Client List</h2>
            <div class="content">
					<fieldset>
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>MESSAGE</th>
              <th>SENT ON</th>
              <th>SENDER</th>           
              </tr>

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int orgID,i,j,k,esno,custID;
        String name,slot,empID,appdate,msg="",sql="",mail;
        String detail[][];
        %>

        <%
        empID=session.getAttribute("esno").toString();
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select eEmail from staffentry where sno="+empID+" ");
      while(rs.next())
          mail=rs.getString(1);
      rs=st.executeQuery("select * from inbox where receiver='"+mail+"' ");
      while(rs.next())
          {

      %>

<tr bgcolor="#A4C0C8">
    <td><jsp:expression>rs.getString("msg")</jsp:expression></td>

    <td><jsp:expression>rs.getString("sent_time")</jsp:expression></td>

    <td><jsp:expression>rs.getString("sender")</jsp:expression></td>

</tr>

  <%
       }

       }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      %>

  </table><br>
  <center>
  <form action="staffTasks.jsp">
      <input type="submit" value="   OK  " />
      </form>
  </center>
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
