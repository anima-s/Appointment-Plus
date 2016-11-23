<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

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
<%!
        Connection con=null;
        Statement st=null,stmt=null;
        ResultSet rs=null,res=null;
        int counter,i,j,intdate,intgetdate,orgID,empID;
        String eEmail="",workSlot="",workDay="",date="",slot="",fixslot="";
        String msg="",freeslot="",str1="";
        String appdate;
        Date strdate,myappdate;
        int counting,k,l,esno,mySp1,mySp2,qresult;
        char ch=',',DateSeparator='-';
        String slots[],nofreeslot="",strMonth,strDate,strYear,datetoparse="";
%>

<%

        orgID=Integer.parseInt(session.getAttribute("orgID").toString());
        empID=Integer.parseInt(session.getAttribute("empID").toString());
        appdate=request.getParameter("demo1");
        session.setAttribute("appdate", appdate);


      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      stmt=con.createStatement();
      rs=st.executeQuery("select work_slots,work_days from staffentry where orgID="+orgID+" and empID="+empID+" ");
      while(rs.next())
                   {

      workSlot=rs.getString(1);
      workDay=rs.getString(2);
      }

     //TO REVERSE DATE
        datetoparse=appdate;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        appdate=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE

        myappdate=Date.valueOf(appdate);
          slot="";

          res=st.executeQuery("select appdate,slot from slot where empID="+empID+" and orgID="+orgID+" ");
       // if(res.first()!=res.last())
         //{
            while(res.next())
             {
              strdate=Date.valueOf(res.getString("appdate"));
              rs=stmt.executeQuery("select DATEDIFF('"+myappdate+"','"+strdate+"')");
              while(rs.next())
                    qresult=rs.getInt(1);
              if(qresult==0)
                    {
                        slot+=res.getString(2)+",";
                    }
             }

        // }
if(slot=="")
{
        msg="The free slots are "+workSlot+".";
        fixslot=workSlot;
}
else
{
            slot=slot.substring(0,slot.lastIndexOf(","));

            if(slot.equals(workSlot))
             nofreeslot="There are no free slots . Please select another date.";
            else
            {
                 fixslot=workSlot;
                    if(fixslot.contains(slot+","))
                      fixslot=fixslot.replaceAll(slot+",", "");
                     else if(fixslot.contains(","+slot))
                   fixslot=fixslot.replaceAll(","+slot, "");
                 msg="The free slots are "+fixslot+".To fix the appointment select the slot and then click ok.To select another date click select another.";
            }
}



//for slots
            str1=fixslot+",";
slot="";
        counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
        slots=new String[counting];
        for(i=0;i<counting;i++)
            slots[i]="";
        k=0;j=0;
    while(k<str1.length())
    {
     if(str1.charAt(k)==ch)
        {
               slots[j]=slot;
               slot="";
               j++;
        }
      else
       {
        slot+=str1.charAt(k);
        }
     k++;
    }
if(nofreeslot=="")
    {
  %>

<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Fix Appointment</h2>
			<div class="content">
                     <fieldset>
                         <center>
                             <p style="float:none;padding-top: 5px;font-size: 85%;"><strong><jsp:expression>msg</jsp:expression>
                             </strong></p><br><br>
                        <form action="reqdCustID.jsp" method="post">
                        <table>
                            <tr>
                                <td>Select Slot:</td>
                                <td>
                        <select name="selectslot" id="searchinput">
                            <%
                            l=slots.length;j=0;
                            while(l!=0)
                            {
                            %>
                            <option><jsp:expression>slots[j]</jsp:expression></option>
                            <%
                            j++;
                            l--;
                            }
                            %>
                        </select>
                        </td>
                                </tr>

                        </table>
                            <br><br>
                        <table align="center">
                        <tr>
                            <td>
                                <form id="searchform" method="post" action="reqdCustID.jsp">
                                <input type="submit" value="   Ok   "/>

                            </form>
                                    </td>
                            <td>
                                <form id="searchform" action="orgfixApp.jsp" method="post">
                                    <input type="submit" value="Select Another"/>
                                    <input type="hidden" name="empID" value="<jsp:expression>empID</jsp:expression>">
                               </form></td>
                        </tr>
                        </table>

                        </form>
                        </center>
					</fieldset>

			</div>
		</div>
</div>
<%
}
else
{
%>

<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
     <div id="search" class="boxed">
			<h2 id="detail">Appointment Status</h2>
			<div class="content">

                <form id="searchform" method="post" action="orgfixApp.jsp">
					<fieldset>
                        <p><jsp:expression>nofreeslot</jsp:expression></p><br><br>
                    </fieldset><br>
                       <center>
                        <input type="submit" value="  OK   " />
                        </center>
                    <input type="hidden" name="empID" value="<jsp:expression>empID</jsp:expression>">
				</form>
			</div>
		</div>
</div>


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
</body>
</html>