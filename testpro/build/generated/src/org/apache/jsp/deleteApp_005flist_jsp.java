package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class deleteApp_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null,res1=null;
        String manage[][]=new String[5][7];
        int i=0,j=0,orgID,custID,esno;
        
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write("Design by Free CSS Templates\n");
      out.write("http://www.freecsstemplates.org\n");
      out.write("Released for free under a Creative Commons Attribution 2.5 License\n");
      out.write("\n");
      out.write("Title      : Center Stage\n");
      out.write("Version    : 1.0\n");
      out.write("Released   : 20070710\n");
      out.write("Description: A two-column, fixed-width template suitable for small business websites.\n");
      out.write("\n");
      out.write("-->\n");
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
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        
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

      
      out.write("\n");
      out.write("<div style=\"width: 1000px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("      <div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"staffdetail\">Search List</h2>\n");
      out.write("            <div class=\"content\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                        <br>\n");
      out.write("            <table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n");
      out.write("              <tr bgcolor=\"\">\n");
      out.write("              <th>Organisation</th>\n");
      out.write("              <th>Specialist</th>\n");
      out.write("              <th>Slot</th>\n");
      out.write("              <th>Day</th>\n");
      out.write("\n");
      out.write("              </tr>\n");
      out.write("              ");

              for(j=0;j<i;j++)
                  {
              
      out.write("\n");
      out.write("\n");
      out.write("              <tr>\n");
      out.write("                  <form  action=\"servlet_deletelist.jsp\" method=\"post\">\n");
      out.write("                  <td>");
      out.print(manage[j][4]);
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(manage[j][5]);
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(manage[j][2]);
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(manage[j][3]);
      out.write("</td>\n");
      out.write("                  <td><input type=\"submit\" value=\"Delete\" name=\"submit\" />\n");
      out.write("                  <input type=\"hidden\" name=\"delapp_sno\" value=\"");
      out.print(manage[j][6]);
      out.write("\">\n");
      out.write("                  </td>\n");
      out.write("                  </form>\n");
      out.write("              </tr>\n");
      out.write("              ");

              }
        
      out.write("\n");
      out.write("  </table>\n");
      out.write("  <form action=\"appointment.jsp\">\n");
      out.write("      <center>\n");
      out.write("      <input type=\"submit\" value=\"EXIT\" />\n");
      out.write("      </center>\n");
      out.write("  </form>\n");
      out.write("\t\t\t\t\t</fieldset>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
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
