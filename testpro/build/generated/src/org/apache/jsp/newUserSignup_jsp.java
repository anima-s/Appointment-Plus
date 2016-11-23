package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newUserSignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("<!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("\n");
      out.write("\t\t\tif (document.newuser.Usermail.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter your email.\");\n");
      out.write("\t\t\t\t\tdocument.newuser.Usermail.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.newuser.Userpwd.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter a password.\");\n");
      out.write("\t\t\t\t\tdocument.newuser.Userpwd.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.newuser.Userpwd2.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please retype password.\");\n");
      out.write("\t\t\t\t\tdocument.newuser.Userpwd2.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                if (document.newuser.Usermail.value !=\"\")\n");
      out.write("            \t{\n");
      out.write("\t\t\t\t\tcheckEmail();\n");
      out.write("\t\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\treturn true;\n");
      out.write("\t}\n");
      out.write("\tfunction checkEmail()\n");
      out.write("\t{\n");
      out.write("\t\tvar email=document.getElementById(\"emailaddress\");\n");
      out.write("\t\tvar filter = /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\n");
      out.write("\t\tif (!filter.test(email.value))\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t alert(\"Please provide a valid email address\");\n");
      out.write("\t\t\t\temail.focus;\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
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
      out.write("\t\t\t<li><a href=\"#\">Galleries</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width: 400px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"detail\">\n");
      out.write("            User Details</h2>\n");
      out.write("            \n");
      out.write("            <div class=\"content\">\n");
      out.write("                <h3>Must Read</h3>\n");
      out.write("                <p>&ldquo;If you want to take an appointment your Usertype is <strong>User</strong> <br>and if you want to provide appointments your Usertype is <strong>Organisation.</strong>\n");
      out.write("                      <br>Enter <strong>any password</strong> you wish and it will be fixed as <br>\n");
      out.write("                          your login password.The password must contain atleast <br>\n");
      out.write("                          five characters.Enter your email for identification.&ldquo;</p>\n");
      out.write("                <form id=\"searchform\" method=\"post\" action=\"servletNewUserSignup.jsp\" name=\"newuser\" onSubmit=\"return validateCreateAccount();\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                        <br>\n");
      out.write("                        <table>\n");
      out.write("                    <tr><td>Enter Email:</td><td><input id=\"emailaddress\" type=\"text\" name=\"Usermail\" style=\"width: 215px;margin-bottom: 5px;\" /></td></tr>\n");
      out.write("                    <tr><td>Enter Password:</td><td><input id=\"searchinput\" type=\"text\" name=\"Userpwd\"/></td></tr>\n");
      out.write("                    <tr><td>Retype Password:</td><td><input id=\"searchinput\" type=\"text\" name=\"Userpwd2\"/></td></tr>\n");
      out.write("                    <tr><td>User Type:</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"selectUsertype\" id=\"searchselect\">\n");
      out.write("                          <option>User</option>\n");
      out.write("                          <option>Organisation</option>                         \n");
      out.write("                      </select>\n");
      out.write("                        </td></tr>\n");
      out.write("                        </table>\n");
      out.write("                        <center>\n");
      out.write("                        <input type=\"submit\" value=\"Submit\" />\n");
      out.write("                           </center>\n");
      out.write("\t\t\t\t\t</fieldset>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
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
