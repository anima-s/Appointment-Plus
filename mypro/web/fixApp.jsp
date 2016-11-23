<%--
    Document   : fixApp
    Created on : May 7, 2008, 10:32:59 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


       <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        String eEmail="",empID="",workSlot="",workDay="",date="",startday="",slot="",count="",day="",str="",msg="",color="";
        int counting=1,k,l,startindex,counter,i,j,orgID,no_of_slot,esno;
        char ch=',';
        String weekColor[]=new String[7],dates[][]=new String[35][3],slots[];
        String storeday[]={"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};       
        String resultset[][]=new String[10][2];
        %>

        <%
        orgID=Integer.parseInt(request.getParameter("orgID"));
        eEmail=request.getParameter("eEmail");
        session.setAttribute("orgID",orgID);
        session.setAttribute("eEmail", eEmail);
        for(i=0;i<35;i++)
            {           
            dates[i][2]="-1";
            }
        j=1;
            for(i=0;i<35;i++)
                {

                if(i<3 || i>33)
                    {
                    dates[i][0]="";
                    dates[i][1]="";
                    }
               else
                   {
                    dates[i][0]=(""+j);
                    j++;
                    }
                }
       i=0;
        while(i<35)
            {
            if(dates[i][0].equals("1"))
                {
                startindex=i;
                }
            i++;
            }
        //find day
   startday="Thursday";
 i=0;
            while(!storeday[i].equalsIgnoreCase(startday))
                {
                i++;
                }
//initialize days of dates.
        for(j=0;j<31;j++)
            {
            dates[startindex][1]=storeday[i];
            startindex++;
            if(storeday[i].equalsIgnoreCase("sunday"))
                {
                i=0;
                }
            else
                {
                i++;
                }
            }
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
      rs=st.executeQuery("select work_slot_num,sno,work_slots,work_days from staffentry where orgID="+orgID+" and eEmail='"+eEmail+"'");
      while(rs.next())
          {
            no_of_slot=rs.getInt(1);
            esno=rs.getInt(2);
            workSlot=rs.getString(3);
            workDay=rs.getString(4);
          }
      session.setAttribute("esno",esno);
        // for fixing colors of slot prepare statement
      if(no_of_slot==5)
          msg="The<strong> black</strong> color shows that the specialist doesn't work on these days.<br>"+
                "The<strong> red</strong> color shows that no slot is free.<br>"+
                "The<strong> green</strong> color shows that only one slot is free.<br>"+
                "The<strong> blue</strong> color shows that only two slots are free.<br>"+
                "The<strong> yellow</strong> color shows that only three slots are free.<br>"+
                "The<strong> voilet</strong> color shows that  four slots are free.<br>"+
                "The<strong> white</strong> color shows that  all five slots are free.<br><br><br>";
      else if(no_of_slot==4)
          msg="The<strong> black</strong> color shows that the specialist doesn't work on these days.<br>"+
                "The<strong> red</strong> color shows that no slot is free.<br>"+
                "The<strong> green</strong> color shows that only one slot is free.<br>"+
                "The<strong> blue</strong> color shows that only two slots are free.<br>"+
                "The<strong> yellow</strong> color shows that three slots are free.<br>"+
                "The<strong> white</strong> color shows that  all four slots are free.<br><br><br>";
       else if(no_of_slot==3)
          msg="The<strong> black</strong> color shows that the specialist doesn't work on these days.<br>"+
                "The<strong> red</strong> color shows that no slot is free.<br>"+
                "The<strong> green</strong> color shows that only one slot is free.<br>"+
                "The<strong> blue</strong> color shows that two slots are free.<br>"+
                "The<strong> white</strong> color shows that  all three slots are free.<br><br><br>";
      else if(no_of_slot==2)
          msg="The<strong> black</strong> color shows that the specialist doesn't work on these days.<br>"+
                "The<strong> red</strong> color shows that no slot is free.<br>"+
                "The<strong> green</strong> color shows that only one slot is free.<br>"+
                "The<strong> white</strong> color shows that  all two slots are free.<br><br><br>";
      else if(no_of_slot==1)
          msg="The<strong> black</strong> color shows that the specialist doesn't work on these days.<br>"+
               "The<strong> red</strong> color shows that no slot is free.<br>"+
               "The<strong> white</strong> color shows that the slot is free.<br><br><br>";
       //for days

        for(i=0;i<7;i++)
    weekColor[i]="white";
if(!workDay.contains("mon"))
          weekColor[0]="black";
if(!workDay.contains("tue"))
          weekColor[1]="black";
if(!workDay.contains("wed"))
          weekColor[2]="black";
if(!workDay.contains("thu"))
          weekColor[3]="black";
if(!workDay.contains("fri"))
          weekColor[4]="black";
if(!workDay.contains("sat"))
          weekColor[5]="black";
if(!workDay.contains("sun"))
          weekColor[6]="black";
        ///initialize colors
            for(i=0;i<7;i++)
                {
                if(weekColor[i].equals("black"))
                    {
                    for(j=0;j<35;j++)
                       {
                        if(!dates[j][1].isEmpty())
                            {
                       if(dates[j][1].equalsIgnoreCase(storeday[i]))
                           {                           
                           dates[j][2]=("5");
                       }
                       }
                        }
                    }
                }
      for(i=0;i<10;i++)
          {
          resultset[i][0]="";resultset[i][1]="";
          }

      res=st.executeQuery("select * from slot where empID="+esno+" and orgID="+orgID+" ");
i=0;
 while(res.next())
      {          
          resultset[i][0]=res.getString("appdate");
          i++;
       }
for(j=0;j<i;j++)
    {
           counter=0;
        for(k=0;k<i;k++)
            {
                if(resultset[j][0].equals(resultset[k][0]))
                {
                    counter=counter+1;
                }
            }
                resultset[j][1]=""+(no_of_slot-counter);
     }
for(j=0;j<i;j++)
    {
    for(k=0;k<35;k++)
        {
        if(resultset[j][0].equals(dates[k][0]))
        {
        dates[k][2]=resultset[j][1];
        }
        }
    }
      %>
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
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="profile">Search List</h2>
            <div class="content">
                <fieldset>
                    <p><jsp:expression>msg</jsp:expression></p>             
             <form id="searchform" name="fixApp_form" method="post" action="appAvail.jsp">
                 <div id="sidebar" class="boxed">
                 <table>
                    <tr><td>Enter Date:</td><td><input type="text" name="appdate" value="" /></td></tr>
                 </table>
                 <center>
                     <input type="submit" value="   OK    "/>
                     </center>
                 </div>
					<table border="1" align="left">
						<caption>
                            October 2007
						</caption>
						<thead>
							<tr>
                                <input type="hidden" name="month" value="10"/>
                                <input type="hidden" name="year" value="2007">

<th scope="col" bgcolor="#A4C0C8">Mon</th>
<th scope="col" bgcolor="#A4C0C8">Tue</th>
<th scope="col" bgcolor="#A4C0C8">Wed</th>
<th scope="col" bgcolor="#A4C0C8">Thu</th>
<th scope="col" bgcolor="#A4C0C8">Fri</th>
<th scope="col" bgcolor="#A4C0C8">Sat</th>
<th scope="col" bgcolor="#A4C0C8">Sun</th>

							</tr>
						</thead>
						<tfoot>
							<tr>
								<td abbr="September" colspan="3" id="prev"><a href="#">&laquo; Sep</a></td>
								<td class="pad">&nbsp;</td>
								<td abbr="November" colspan="3" id="next"><a href="#">Nov &raquo;</a></td>
							</tr>
						</tfoot>
						<tbody>
							<tr>

        <%
     //for colors of days
      for(j=1;j<=35;j++)
          {  
          if(dates[j-1][2].equals("5"))
                color="black";
            if(dates[j-1][2].equals("4"))
                color="violet";
            if(dates[j-1][2].equals("3"))
                color="yellow";
            if(dates[j-1][2].equals("2"))
                color="blue";
            if(dates[j-1][2].equals("1"))
                color="green";
            if(dates[j-1][2].equals("0"))
                color="red";
            if(dates[j-1][2].equals("-1"))
                color="white";

            if((j%7)==0)
                {
                %>

                <td bgcolor=<jsp:expression>color</jsp:expression>> <jsp:expression>dates[j-1][0]</jsp:expression></td>
                  </tr>
                <tr>
                <%
                }
            else
                {
           %>
          <td bgcolor=<jsp:expression>color</jsp:expression>> <jsp:expression>dates[j-1][0]</jsp:expression></td>

               <%
               }
          }
      %>
      </tr>
       </table>
       </form>
       </fieldset>
      </div>
    </div>
</div>

       <%
       }
     catch (SQLException e) {
        out.println("Exception i:" + e);
     }
      catch (Exception e) {
      out.println("Error occurred :" + e);
     }

      %>

</body>
</html>
