package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
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
      out.write("     <SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("    <!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("\n");
      out.write("\t\t\tif (document.loginform.Usernameinput.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter a username.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.Usernameinput.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.loginform.Passwordinput.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter a password.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.Passwordinput.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                return true;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
      out.write("<div id=\"header\">\n");
      out.write("\t<div id=\"logo\">\n");
      out.write("\t\t<h1><a href=\"#\">Appointment+.com</a></h1>\n");
      out.write("\t\t<h2><a>Manage your appointments</a></h2>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">About</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\t\t\t\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div id=\"page\">\n");
      out.write("\t<div id=\"content\">\n");
      out.write("\t\t<div style=\"margin-bottom: 20px;\">\n");
      out.write("\t\t\t<h1 class=\"title\">Welcome to Our Website!</h1>\n");
      out.write("\t\t\t<p><strong>Appointment+.com</strong> is the only site that manages your headaches of taking and remembering appointments.With this site you need not to go the spot to take appointments, no phone calls,no sticky notes,no reminders and no pain of refixing them each time.<em>Enjoy :)</em></p>\n");
      out.write("\t\t\t<h2>The most powerfull and easy searching procedure</h2>\n");
      out.write("\t\t\t<p>We provide you the option of searching the required catagory of interest and that too within few seconds.It manages your appointments itself and keeps you aware of latest updates in your appointments.</p>\n");
      out.write("\t\t\t<blockquote>\n");
      out.write("                <h3>What you can do</h3>\n");
      out.write("                <p>&ldquo;manage appointments&ldquo;<br>&ldquo;search organisations or people for appointments&ldquo;<br>&ldquo;manage your profile&ldquo;</p>\n");
      out.write("\t\t\t</blockquote>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div>&nbsp;</div>\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<img src=\"\\ProjectAppintment\\web\\dentist1.gif\"/>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end content -->\n");
      out.write("\t<div id=\"sidebar\">\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<img src=\"\"/>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"news\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 class=\"title\">User Login</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\n");
      out.write("\t\t\t\t<form id=\"searchform\" method=\"post\"  name=\"loginform\" action=\"servletIndex.jsp\" onSubmit=\"return validateCreateAccount();\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("\t\t\t\t\tUserID<input id=\"searchinput\" type=\"text\" name=\"Usernameinput\" value=\"\" />\n");
      out.write("\t\t\t\t\tPassword<input id=\"searchinput\" type=\"text\" name=\"Passwordinput\" value=\"\" />\n");
      out.write("                    Usertype<select id=\"searchinput\" type=\"text\" name=\"Usertypeinput\">\n");
      out.write("                        <option id=\"searchinput\">User</option>\n");
      out.write("                        <option id=\"searchinput\">Organisation</option>\n");
      out.write("                      \n");
      out.write("                    </select>\n");
      out.write("\t\t\t\t\t<input id=\"searchsubmit\" type=\"submit\" value=\"Sign in\" />\n");
      out.write("                    <br><p><a href=\"changepwd.jsp\">Change password</a></p><br>\n");
      out.write("\t\t\t\t\t<p><a href=\"newUserSignup.jsp\">Sign in as new User</a></p>\n");
      out.write("\t\t\t\t\t</fieldset>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end sidebar -->\n");
      out.write("\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("</div>\n");
      out.write("<!-- end page -->\n");
      out.write("<div id=\"footer\">\n");
      out.write("\n");
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
