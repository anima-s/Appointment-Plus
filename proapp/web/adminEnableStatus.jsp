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

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null;
         String email,workSlot,organisation,workDays,msg="",sql="",tel="",loc="",catagory="",pwd="",reg="",status="";
         int numslots=0,capacity=0,orgID=0,telcode=0,telno=0;
        %>

        <%
        
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();

      rs=st.executeQuery("select * from org ");
      %>

      <div style="width: 1250px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 style="width: 1240px;height: 35px;padding: 5px 0 0 5px;background:#A4C0C8;border-top: 5px solid #5F919E;font-size: 136%;color: #144B6B;">Organisation List</h2>
            <div class="content">
					<fieldset>                       
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>ORG ID</th>
              <th>ORG NAME</th>
              <th>PASSWORD</th>
              <th>NO OF WORK SLOTS</th>
              <th>WORKING DAYS</th>
              <th>WORKING SLOTS</th>
              <th>STATUS</th>
              <th>REG NO</th>
              <th>CATAGORY</th>
              <th>EMAIL</th>
              <th>STAFF CAPACITY</th>
              <th>LOCATION</th>
              <th>CONTACT</th>              
              </tr>

      <%
      while(rs.next())
          {
      
      email=rs.getString("oEmail");
      numslots=rs.getInt("no_of_slot");
      workSlot=rs.getString("work_slots");
      workDays=rs.getString("work_days");
      organisation=rs.getString("orgName");
      capacity=rs.getInt("staffCap");
      orgID=rs.getInt("orgID");
      loc=rs.getString("loc");
      catagory=rs.getString("catagory");
      reg=rs.getString("regNo");
      pwd=rs.getString("orgPwd");
      status=rs.getString("status");
      telcode=rs.getInt("telcode");
      telno=rs.getInt("telno");
//#A4C0C8
      %>

<tr bgcolor="#a4coe4">
    <form  action="adminenabled.jsp" method="post" style="">
    <td><jsp:expression>orgID</jsp:expression></td>

    <td><jsp:expression>organisation</jsp:expression></td>

    <td><jsp:expression>pwd</jsp:expression></td>

    <td><jsp:expression>numslots</jsp:expression></td>

    <td><jsp:expression>workDays</jsp:expression></td>

    <td><jsp:expression>workSlot</jsp:expression></td>
    <td><jsp:expression>status</jsp:expression></td>
    <td><jsp:expression>reg</jsp:expression></td>
    <td><jsp:expression>catagory</jsp:expression></td>
    <td><jsp:expression>email</jsp:expression></td>
    <td><jsp:expression>capacity</jsp:expression></td>
    <td><jsp:expression>loc</jsp:expression></td>
    <td><jsp:expression>telcode</jsp:expression>-<jsp:expression>telno</jsp:expression></td>

    <td><input type="hidden" name="orgID" value="<%=orgID%>">
        <input type="submit" value="Enable Status" name="submit" />
    
     </td>
    </form>
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
   <form method="post" action="index.jsp">
  <center>
      <br><br>
      <input type="submit" value=" EXIT "/>
  </center>
  </form>
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
