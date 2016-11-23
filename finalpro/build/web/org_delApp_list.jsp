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
        Statement st=null,stmt=null;
        ResultSet rs=null,res=null,result=null;
        int orgID,i,j,k,custID,esno,date1,date2,mySp1,mySp2;
        String cname,msg="",sql="",empID="",strtodate="",strfromdate="",strtodate1="",strfromdate1="",datetoparse="",strMonth="",strDate="",strYear="",tempdatestr="";
        Date fromdate=null, todate=null,date=null;
        String detail[][];
        char DateSeparator='-';
        %>

        <%
        empID=request.getParameter("empID");
        strtodate1=request.getParameter("todate");
         //TO REVERSE DATE
        datetoparse=strtodate1;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        strtodate=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE
        
        strfromdate1=request.getParameter("fromdate");
        //TO REVERSE DATE
        datetoparse=strfromdate1;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        strfromdate=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE
        
        fromdate=Date.valueOf(strfromdate);
        todate=Date.valueOf(strtodate);
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      stmt=con.createStatement();
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
     res=st.executeQuery("select * from slot where empID="+esno+" and orgID="+orgID+" ");
      i=0;
      while(res.next())
      {
      detail[i][0]=res.getString("sno");
      detail[i][1]=res.getString("slot");
      detail[i][2]=res.getString("appdate");
      detail[i][3]=res.getString("custID");
      i++;
      }
      for(k=0;k<i;k++)
      {
      date=Date.valueOf(detail[k][2]);
      result=st.executeQuery("select DATEDIFF('"+todate+"','"+date+"')");
      while(result.next())
      {
          date1=result.getInt(1);
      }

      rs=stmt.executeQuery("select DATEDIFF('"+date+"','"+fromdate+"')");
      while(rs.next())
      {
          date2=rs.getInt(1);
      }

     if(date1>=0 && date2>=0)
         {
         detail[k][5]="true";
         }
      rs=stmt.executeQuery("select cname from custinfo where sno="+detail[k][3]+" ");
      while(rs.next())
      {
          cname=rs.getString(1);
      }
      detail[k][4]=cname;
      }
    
      for(j=0;j<i;j++)
          {
         if(detail[j][5].equals("true"))
             {
             datetoparse=detail[j][2];
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strYear=datetoparse.substring(0,mySp1);
		strDate=datetoparse.substring(mySp2+1,mySp2+3);
        tempdatestr=strDate+"-"+strMonth+"-"+strYear;
      %>

<tr bgcolor="#A4C0C8">
    <form  action="servlet_orgdelApplist.jsp" method="post">
    <td><jsp:expression>detail[j][3]</jsp:expression></td>

    <td><jsp:expression>detail[j][4]</jsp:expression></td>

    <td><jsp:expression>tempdatestr</jsp:expression></td>

    <td><jsp:expression>detail[j][1]</jsp:expression></td>

    <td><input type="submit" value="DELETE" name="submit" />
    <input type="hidden" name="appsno" value="<jsp:expression>detail[j][0]</jsp:expression>">
    <input type="hidden" name="empID" value="<jsp:expression>empID</jsp:expression>">
    <input type="hidden" name="fromdate" value="<jsp:expression>strfromdate1</jsp:expression>">
    <input type="hidden" name="todate" value="<jsp:expression>strtodate1</jsp:expression>">
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
