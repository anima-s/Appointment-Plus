package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class fixApp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        String eEmail="",empID="",workSlot="",workDay="",date="",startday="",slot="",count="",day="",str="",msg="",color="";
        int counting=1,k,l,startindex,counter,i,j,orgID,no_of_slot,esno;
        char ch=',';
        String weekColor[]=new String[7],dates[][]=new String[35][3],slots[];
        String storeday[]={"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};       
        String resultset[][]=new String[10][2];
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

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
      
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\">\n");
      out.write("\t<div id=\"logo\">\n");
      out.write("\t\t<h1><a href=\"#\">Appointment+.com</a></h1>\n");
      out.write("\t\t<h2><a href=\"\">Manage your appointments</a></h2>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">About</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\t\t\t\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width: 600px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("      <div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"profile\">Search List</h2>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <p>");
      out.print(msg);
      out.write("</p>             \n");
      out.write("             <form id=\"searchform\" name=\"fixApp_form\" method=\"post\" action=\"appAvail.jsp\">\n");
      out.write("                 <div id=\"sidebar\" class=\"boxed\">\n");
      out.write("                 <table>\n");
      out.write("                    <tr><td>Enter Date:</td><td><input type=\"text\" name=\"appdate\" value=\"\" /></td></tr>\n");
      out.write("                 </table>\n");
      out.write("                 <center>\n");
      out.write("                     <input type=\"submit\" value=\"   OK    \"/>\n");
      out.write("                     </center>\n");
      out.write("                 </div>\n");
      out.write("\t\t\t\t\t<table border=\"1\" align=\"left\">\n");
      out.write("\t\t\t\t\t\t<caption>\n");
      out.write("                            October 2007\n");
      out.write("\t\t\t\t\t\t</caption>\n");
      out.write("\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("                                <input type=\"hidden\" name=\"month\" value=\"10\"/>\n");
      out.write("                                <input type=\"hidden\" name=\"year\" value=\"2007\">\n");
      out.write("\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Mon</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Tue</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Wed</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Thu</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Fri</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Sat</th>\n");
      out.write("<th scope=\"col\" bgcolor=\"#A4C0C8\">Sun</th>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t<tfoot>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td abbr=\"September\" colspan=\"3\" id=\"prev\"><a href=\"#\">&laquo; Sep</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"pad\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td abbr=\"November\" colspan=\"3\" id=\"next\"><a href=\"#\">Nov &raquo;</a></td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</tfoot>\n");
      out.write("\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\n");
      out.write("        ");

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
                
      out.write("\n");
      out.write("\n");
      out.write("                <td bgcolor=");
      out.print(color);
      out.write('>');
      out.write(' ');
      out.print(dates[j-1][0]);
      out.write("</td>\n");
      out.write("                  </tr>\n");
      out.write("                <tr>\n");
      out.write("                ");

                }
            else
                {
           
      out.write("\n");
      out.write("          <td bgcolor=");
      out.print(color);
      out.write('>');
      out.write(' ');
      out.print(dates[j-1][0]);
      out.write("</td>\n");
      out.write("\n");
      out.write("               ");

               }
          }
      
      out.write("\n");
      out.write("      </tr>\n");
      out.write("       </table>\n");
      out.write("       </form>\n");
      out.write("       </fieldset>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("       ");

       }
     catch (SQLException e) {
        out.println("Exception i:" + e);
     }
      catch (Exception e) {
      out.println("Error occurred :" + e);
     }

      
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
