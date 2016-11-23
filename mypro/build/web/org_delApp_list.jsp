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
			<h2 id="staffdetail">Search List</h2>
            <div class="content">

					<fieldset>
                        <br>
            <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>CUST ID</th>
              <th>CUST NAME</th>
              <th>DATE</th>
              <th>SLOT</th>
              
              </tr>

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null,result=null;
        int orgID,i,j,k,custID,date,fromdate,todate,esno;
        String name,msg="",sql="",empID;
        String detail[][];
        %>

        <%
        empID=request.getParameter("empID");
        fromdate=Integer.parseInt(request.getParameter("fromdate"));
        todate=Integer.parseInt(request.getParameter("todate"));
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      result=st.executeQuery("select sno from staffentry where empID='"+empID+"' and orgID="+orgID+" ");
      while(result.next())
          esno=result.getInt(1);
      st=con.createStatement();
      rs=st.executeQuery("select * from slot where empID="+esno+" and orgID="+orgID+" ");
      i=1;
      while(rs.next())
          i++;
      detail=new String[i][6];

      for(j=0;j<i;j++)
            {
            for(k=0;k<6;k++)
                    detail[j][k]="";
            }
     rs=st.executeQuery("select * from slot where empID="+esno+" and orgID="+orgID+" ");
      i=0;
      while(rs.next())
      {
      detail[i][0]=rs.getString("sno");
      detail[i][1]=rs.getString("slot");
      detail[i][2]=rs.getString("appdate");
      detail[i][3]=rs.getString("custID");      
      i++;
      }
      for(j=0;j<i;j++)
          {
          date=Integer.parseInt(detail[j][2]);//out.println(date);
          if(date>=fromdate && date<=todate)
              detail[j][5]="true";
          else
              detail[j][5]="false";
          custID=Integer.parseInt(detail[j][3]);
          res=st.executeQuery("select cname from custinfo where sno="+custID+" ");
          while(res.next())
              detail[j][4]=res.getString(1);        
          }
      for(j=0;j<i;j++)
          {
         if(detail[j][5].equals("true"))
             {
              
      %>

<tr bgcolor="#A4C0C8">
    <form  action="servlet_orgdelApplist.jsp" method="post">
    <td><jsp:expression>detail[j][3]</jsp:expression></td>

    <td><jsp:expression>detail[j][4]</jsp:expression></td>

    <td><jsp:expression>detail[j][2]</jsp:expression></td>

    <td><jsp:expression>detail[j][1]</jsp:expression></td>

    <td><input type="submit" value="DELETE" name="submit" />
    <input type="hidden" name="appsno" value="<jsp:expression>detail[j][0]</jsp:expression>">
    <input type="hidden" name="empID" value="<jsp:expression>empID</jsp:expression>">
    <input type="hidden" name="fromdate" value="<jsp:expression>fromdate</jsp:expression>">
    <input type="hidden" name="todate" value="<jsp:expression>todate</jsp:expression>">
     </td>
    </form>
</tr>

  <%
       }
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
  <form action="org_manageApp.jsp">
      <center>
      <input type="submit" value="EXIT" />
      </center>
			</form>
            </fieldset>
							</div>
		</div>
</div>
</body>
</html>
