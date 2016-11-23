package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class updateUserprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int ID;
         String name="",sex="",date="",post="",org="",tadd="",padd="",month="",year="",dob="",email="",tel="",mail="";
        
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
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
      out.write("\n");
      out.write("\n");
      out.write("        ");

        ID=Integer.parseInt(session.getAttribute("ID").toString());
       
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select * from custinfo where sno="+ID+" ");
      while(rs.next())
          {
          name=rs.getString("cname");
          dob=rs.getString("cDOB");
          mail=rs.getString("cmail");
          post=rs.getString("cdesg");
          tadd=rs.getString("ctadd");
          padd=rs.getString("cpadd");
          tel=rs.getString("cCon");
          }
         
      out.write("\n");
      out.write("<div style=\"width: 600px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"profile\">\n");
      out.write("            User Profile</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("            <form name=\"Userprofile\" id=\"searchform\" action=\"insertUserprofile.jsp\"  method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("             <table align=\"center\">\n");
      out.write("              <tr>\n");
      out.write("                  <td>Name:</td><td><input id=\"searchinput\" type=\"text\" name=\"Username\" value=");
      out.print(name);
      out.write(" /></td>\n");
      out.write("            </tr>           \n");
      out.write("            <tr>\n");
      out.write("            <td>Sex:</td><td><select id=\"searchinput\" name=\"Usersex\" style=\"width: 215px;margin-bottom: 5px;\">\n");
      out.write("                <option>M</option>\n");
      out.write("                <option>F</option>\n");
      out.write("            </select></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("            <td>Date Of Birth:</td>\n");
      out.write("            <td><input type=\"text\" name=\"UserDOB\" id=\"demo1\" size=\"30\" value=");
      out.print(dob);
      out.write("/>\n");
      out.write("            <a href=\"javascript:NewCal('demo1','ddmmyyyy',true,24)\">\n");
      out.write("                <img src=\"images/cal.gif\" width=\"16\" height=\"16\" border=\"0\" alt=\"Pick a date\"></a>\n");
      out.write("                <span class=\"descriptions\">select date of birth..</span>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("              <tr><td>Designation:</td><td><input id=\"searchinput\" type=\"text\" name=\"Userpost\" value=");
      out.print(post);
      out.write("/></td></tr>\n");
      out.write("              <tr><td>Organisation:</td><td><input id=\"searchinput\" type=\"text\" name=\"Userorg\" value=");
      out.print(org);
      out.write("/></td></tr>\n");
      out.write("              <tr><td>Temporary Address:</td><td><input id=\"searchinput\" type=\"text\" name=\"Usertadd\" value=");
      out.print(tadd);
      out.write(" /></td></tr>\n");
      out.write("              <tr><td>Permanent Address:</td><td><input id=\"searchinput\" type=\"text\" name=\"Userpadd\" value=");
      out.print(padd);
      out.write(" /></td></tr>\n");
      out.write("              <tr><td>Contact:</td><td><input id=\"searchinput\" type=\"text\" name=\"Usertel\" value=");
      out.print(tel);
      out.write("/></td></tr>\n");
      out.write("              <tr><td>Email:</td><td><input id=\"searchinput\" type=\"text\" name=\"Usermail\" value=");
      out.print(mail);
      out.write("/></td></tr>\n");
      out.write("           </table>\n");
      out.write("           </fieldset>\n");
      out.write("             <br>\n");
      out.write("               <center>\n");
      out.write("               <table>\n");
      out.write("              <tr><td><form action=\"insertUserprofile.jsp\" method=\"post\"><input type=\"submit\" value=\"SUBMIT\" size=\"5\" /></form></td>\n");
      out.write("              <td><form action=\"appointment.jsp\"><input type=\"submit\" value=\"CANCEL\" size=\"5\"/></form></td></tr>\n");
      out.write("               </table>\n");
      out.write("              </center>\n");
      out.write("             </form>\n");
      out.write("        </div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("        ");

         // }
       }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      
      out.write("\n");
      out.write("    </body>\n");
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
