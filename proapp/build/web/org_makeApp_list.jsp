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
			<li class="active"><a href="logout.jsp">Home</a></li>
			<li class="active"><a href="index.jsp">Logout</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="staffdetail">Search List</h2>
            <div class="content">
					<fieldset>
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>EMPLOYEE ID</th>
              <th>EMPLOYEE NAME</th>
              <th>QUALIFICATION</th>
              <th>FEES</th>
              <th>WORKING DAYS</th>
              <th>WORKING TIMINGS</th>
              <th>EMAIL</th>
              </tr>

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        int orgID,i,esno;
        String name,qual,mail,slots,orgName,fees,days,empID,msg="",sql="",special;
        
        %>

        <%
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
        special=request.getParameter("special");
            sql="select * from staffentry where orgID="+orgID+" and specialist='"+special+"' ";
         
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery(sql);
      i=0;
      while(rs.next())
      {
      name=rs.getString("eName");
      qual=rs.getString("qual");
      mail=rs.getString("eEmail");
      slots=rs.getString("work_slots");
      days=rs.getString("work_days");
      fees=rs.getString("fees");
      empID=rs.getString("empID");
      esno=rs.getInt("sno");
      %>

<tr bgcolor="#A4C0C8">
    <form  action="orgfixApp.jsp" method="post">
    <td><jsp:expression>empID</jsp:expression></td>

    <td><jsp:expression>name</jsp:expression></td>

    <td><jsp:expression>qual</jsp:expression></td>

    <td><jsp:expression>days</jsp:expression></td>

    <td><jsp:expression>slots</jsp:expression></td>

    <td><jsp:expression>fees</jsp:expression></td>

    <td><jsp:expression>mail</jsp:expression></td>

    <td><input type="submit" value="SELECT" name="submit" />    
    <input type="hidden" name="empID" value="<jsp:expression>empID</jsp:expression>">
    </td>
    </form>
</tr>

  <%
      i++;
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
  <form action="organisation.jsp">
      <br><br>
  <input type="submit" value="EXIT" />
      </form>
  </center>
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
