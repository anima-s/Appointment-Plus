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
<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="staffdetail">Search List</h2>
            <div class="content">
					<fieldset>
                        <form action="org_delApp.jsp" method="post">
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
             
              <th>EMPLOYEE NAME</th>
             
              <th>SPECIALISATION</th>
              
              <th>EMPLOYEE ID</th>
              </tr>

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int orgID,i,j,k;
        String name,special,id,workSlot,organisation,fees,workDays,tempID,msg="",sql="";
        String detail[][];
        %>

        <%
        orgID=Integer.parseInt(session.getAttribute("ID").toString());

        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select * from staffentry where orgID="+orgID+" ");
     
      i=0;
      
          while(rs.next())
              {
              name=rs.getString("eName");
              special=rs.getString("specialist");
              id=rs.getString("empID");
      %>

<tr bgcolor="#A4C0C8">
    
    <td><jsp:expression>name</jsp:expression></td>

    <td><jsp:expression>special</jsp:expression></td>

    <td><jsp:expression>id</jsp:expression></td>
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

  </table>
  <center>
  <input type="submit" value="  OK  " />
  </center>
  </form>
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
