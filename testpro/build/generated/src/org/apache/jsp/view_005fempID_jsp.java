package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005fempID_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int orgID,i,j,k;
        String name,special,id,workSlot,organisation,fees,workDays,tempID,msg="",sql="";
        String detail[][];
        
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
      out.write("\t\t<h2><a href=\"\">Your Everyday Alarm Clock</a></h2>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">About</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Galleries</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width: 1000px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("      <div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"staffdetail\">Search List</h2>\n");
      out.write("            <div class=\"content\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                        <form action=\"org_delApp.jsp\" method=\"post\">\n");
      out.write("                        <br>\n");
      out.write("            <table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n");
      out.write("              <tr bgcolor=\"\">\n");
      out.write("             \n");
      out.write("              <th>NAME</th>\n");
      out.write("             \n");
      out.write("              <th>SPECIALIST</th>\n");
      out.write("              \n");
      out.write("              <th>ID</th>\n");
      out.write("              </tr>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        orgID=Integer.parseInt(session.getAttribute("ID").toString());

        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select * from staffentry where orgID="+orgID+" ");
     
      i=0;
      
          while(rs.next())
              {
              name=rs.getString("eName");
              special=rs.getString("specialist");
              id=rs.getString("empID");
      
      out.write("\n");
      out.write("\n");
      out.write("<tr bgcolor=\"#A4C0C8\">\n");
      out.write("    \n");
      out.write("    <td>");
      out.print(name);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(special);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(id);
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("  ");

       }

       }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      
      out.write("\n");
      out.write("\n");
      out.write("  </table>\n");
      out.write("  <center>\n");
      out.write("  <input type=\"submit\" value=\"  OK  \" />\n");
      out.write("  </center>\n");
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
