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

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null,res1=null;
        String manage[][]=new String[50][7];
        int i=0,j=0,orgID,custID,esno;
        %>

        <%
        
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
     // orgID=Integer.parseInt(session.getAttribute("orgID").toString());
      custID=Integer.parseInt(session.getAttribute("ID").toString());
     // esno=Integer.parseInt(session.getAttribute("esno").toString());
      res=st.executeQuery("select * from slot where custID="+custID+" ");
      i=0;
      while(res.next())
          {
                manage[i][0]=res.getString("orgID");
                manage[i][1]=res.getString("empID");
                manage[i][2]=res.getString("slot");
                manage[i][3]=res.getString("appdate");
                manage[i][6]=res.getString("sno");
                i++;
          }
      for(j=0;j<i;j++)
          {
            orgID=Integer.parseInt(manage[j][0]);
            rs=st.executeQuery("select orgName from org where orgID="+orgID+" ");
            while(rs.next())
            {
                 manage[j][4]=rs.getString(1);
            }

             esno=Integer.parseInt(manage[j][1]);
            res1=st.executeQuery("select eName from staffentry where empID="+esno+" ");
            while(res1.next())
            {
               manage[j][5]=res1.getString(1);
            }
        }

     }
     catch (SQLException e) {
        out.println("Exception is :  " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      %>
<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="staffdetail">Search List</h2>
            <div class="content">

					<fieldset>
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>Organisation</th>
              <th>Specialist</th>
              <th>Slot</th>
              <th>Day</th>

              </tr>
              <%
              for(j=0;j<i;j++)
                  {
              %>

              <tr>
                  <form  action="servlet_deletelist.jsp" method="post">
                  <td><jsp:expression>manage[j][4]</jsp:expression></td>
                  <td><jsp:expression>manage[j][5]</jsp:expression></td>
                  <td><jsp:expression>manage[j][2]</jsp:expression></td>
                  <td><jsp:expression>manage[j][3]</jsp:expression></td>
                  <td><input type="submit" value="Delete" name="submit" />
                  <input type="hidden" name="delapp_sno" value="<jsp:expression>manage[j][6]</jsp:expression>">
                  </td>
                  </form>
              </tr>
              <%
              }
        %>
  </table>
  <form action="appointment.jsp">
      <center>
          <br><br>
      <input type="submit" value="EXIT" />
      </center>
  </form>
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
