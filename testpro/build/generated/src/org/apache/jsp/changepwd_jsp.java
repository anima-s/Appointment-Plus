package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class changepwd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("        <SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("    <!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("\t\t\t\n");
      out.write("\t\t\tif (document.changepwd.oldpwd.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter old password.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.oldpwd.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("             if (document.changepwd.newpwd.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter new password.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.newpwd.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.changepwd.newpwd2.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please renter new password.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.newpwd2.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("            if (document.changepwd.newpwd2.value != document.changepwd.newpwd.value)\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter same passwords in both fields.\");\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                return true;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
      out.write("        <div id=\"header\">\n");
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
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"profile\">\n");
      out.write("            User Profile</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("            <form name=\"changepwd\" id=\"searchform\" action=\"servlet_changepwd.jsp\"  method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("             <table align=\"center\">\n");
      out.write("                 <tr><td>Usertype:</td>\n");
      out.write("                 <td><select name=\"usertype\" id=\"searchselect\">\n");
      out.write("                             <option>User</option>\n");
      out.write("                             <option>Organisation</option>\n");
      out.write("                 </select></td></tr>\n");
      out.write("              <tr><td>Old Password:</td><td><input id=\"searchinput\" type=\"text\" name=\"oldpwd\" /></td></tr>\n");
      out.write("              <tr><td>New Password:</td><td><input id=\"searchinput\" type=\"text\" name=\"newpwd\" value=\"\" /></td></tr>\n");
      out.write("              <tr><td>Retype New Password:</td><td><input id=\"searchinput\" type=\"text\" name=\"newpwd2\" value=\"\" /></td></tr>\n");
      out.write("           </table>\n");
      out.write("           </fieldset>\n");
      out.write("             <br>\n");
      out.write("               <center>\n");
      out.write("                   <table>\n");
      out.write("                    <tr><td><form action=\"servlet_changepwd.jsp\"><input type=\"submit\" value=\"CHANGE\" /></form></td>\n");
      out.write("                    <td><form action=\"index.jsp\"><input type=\"submit\" value=\"CANCEL\" /></form></td></tr>\n");
      out.write("                   </table>\n");
      out.write("              </center>\n");
      out.write("             </form>\n");
      out.write("        </div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
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
