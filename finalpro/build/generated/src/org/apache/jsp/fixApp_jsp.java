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
        String resultset[][]=new String[10][2];
        String workSlot,workDay,eEmail;
        int no_of_slot,esno,orgID,i,j,k,counter=0;
        
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

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("  <link rev=\"made\" href=\"mailto:contact@rainforestnet.com\">\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <meta name=\"generator\" content=\"NoteTab Light 4.9\">\n");
      out.write("  <meta name=\"author\" content=\"TengYong Ng\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"keywords\" content=\"\">\n");
      out.write("\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"C:\\Documents and Settings\\XP\\Desktop\\cal.js\">\n");
      out.write("\n");
      out.write("//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com\n");
      out.write("//Script featured on JavaScript Kit (http://www.javascriptkit.com)\n");
      out.write("//For this script, visit http://www.javascriptkit.com\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        orgID=Integer.parseInt(request.getParameter("orgID"));
        eEmail=request.getParameter("eEmail");
        session.setAttribute("orgID",orgID);
        session.setAttribute("eEmail", eEmail);
      
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select work_slot_num,sno,work_slots,work_days from staffentry where orgID="+orgID+" and eEmail='"+eEmail+"'");
      while(rs.next())
          {
            no_of_slot=rs.getInt(1);
            esno=rs.getInt(2);
            workSlot=rs.getString(3);
            workDay=rs.getString(4);
          }
      session.setAttribute("esno",esno);

      for(i=0;i<10;i++)
          {
          resultset[i][0]="";resultset[i][1]="";
          }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("        ");

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

      
      out.write("\n");
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
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width: 400px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"detail\">Date selector</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\n");
      out.write("                <form id=\"searchform\" method=\"post\" action=\"appAvail.jsp\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                         <p>Please select a date to take appointment and check the availability.</p><br><br>\n");
      out.write("                    </fieldset><br>\n");
      out.write("                       <center>                      \n");
      out.write("                        <table width=\"300\" cellspacing=0 border=\"0\" cellpadding=\"0\" align=\"center\" summary=\"\">\n");
      out.write("\t  \n");
      out.write("\t  <tr>\n");
      out.write("\t  \t<td>\n");
      out.write("\t  \t\t<input type=\"Text\" name=\"demo1\" id=\"demo1\" maxlength=\"25\" size=\"25\"><a href=\"javascript:NewCal('demo1','ddmmyyyy',true,24)\"><img src=\"images/cal.gif\" width=\"16\" height=\"16\" border=\"0\" alt=\"Pick a date\"></a>\n");
      out.write("            <span class=\"descriptions\">pick a date..</span>\n");
      out.write("\t  \t</td>\n");
      out.write("\t  </tr>\n");
      out.write("\t  <tr>\n");
      out.write("\t  \t<td>\n");
      out.write("\t  \t      <br>\n");
      out.write("\n");
      out.write("\t  \t</td>\n");
      out.write("\t  </tr>\n");
      out.write("</table>\n");
      out.write("  \n");
      out.write("    <input type=\"submit\" value=\"Check Available\" />\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write(" ");

       }
     catch (SQLException e) {
        out.println("Exception i:" + e);
     }
      catch (Exception e) {
      out.println("Error occurred :" + e);
     }

      
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
