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
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>
			<li><a href="#">Galleries</a></li>
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
              <th>ORGANISATION</th>
              <th>NAME</th>
              <th>QUALIFICATION</th>
              <th>FEES</th>
              <th>WORKING DAYS</th>
              <th>WORKING TIMINGS</th>
              <th>EMAIL</th>
              </tr>

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int orgID,i,j,k;
        String name,qualification,email,workSlot,organisation,fees,workDays,tempID,msg="",sql="";
        String detail[][];
        %>

        <%
        String special=request.getParameter("special");
        
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement(); 
      rs=st.executeQuery("select * from staffentry where specialist='"+special+"'");
      i=1;
      while(rs.next())
          i++;
      detail=new String[i][9];

      for(j=0;j<i;j++)
            {
            for(k=0;k<8;k++)
                    detail[j][k]="";
            }
      rs=st.executeQuery("select * from staffentry where specialist='"+special+"'");
      i=0;
      while(rs.next())
      {
      detail[i][1]=rs.getString("eName");
      detail[i][2]=rs.getString("qual");
      detail[i][6]=rs.getString("eEmail");
      detail[i][5]=rs.getString("work_slots");
      detail[i][4]=rs.getString("work_days");
      detail[i][3]=rs.getString("fees");
      detail[i][7]=rs.getString("orgID");
      detail[i][8]=rs.getString("empID");
      i++;
      }
      for(j=0;j<i;j++)
          {
          orgID=Integer.parseInt(detail[j][7]);
          res=st.executeQuery("select orgName from org where orgID="+orgID+" ");
          while(res.next())
              detail[j][0]=res.getString(1);
      %>

<tr bgcolor="#A4C0C8">
    <form  action="fixApp.jsp" method="post">
    <td><jsp:expression>detail[j][0]</jsp:expression></td>

    <td><jsp:expression>detail[j][1]</jsp:expression></td>

    <td><jsp:expression>detail[j][2]</jsp:expression></td>

    <td><jsp:expression>detail[j][3]</jsp:expression></td>

    <td><jsp:expression>detail[j][4]</jsp:expression></td>

    <td><jsp:expression>detail[j][5]</jsp:expression></td>

    <td><jsp:expression>detail[j][6]</jsp:expression></td>

    <td><input type="submit" value="FIX APP" name="submit" />
    <input type="hidden" name="orgID" value="<jsp:expression>detail[j][7]</jsp:expression>">
    <input type="hidden" name="eEmail" value="<jsp:expression>detail[j][6]</jsp:expression>">
    <input type="hidden" name="empID" value="<jsp:expression>detail[j][8]</jsp:expression>">
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
					</fieldset>
							</div>
		</div>
</div>
</body>
</html>
