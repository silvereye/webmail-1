/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2014-10-30 07:33:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jackrabbit.core.TransientRepository;
import edms.core.Config;
import javax.jcr.SimpleCredentials;
import javax.jcr.Session;
import javax.jcr.Repository;
import org.apache.jackrabbit.JcrConstants;
import javax.jcr.Value;
import javax.jcr.PropertyIterator;
import javax.jcr.Property;
import javax.jcr.Node;
import javax.jcr.NodeIterator;

public final class fileSystem_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-----------------------/// RIGHT PANNEL ------------------->\r\n");
      out.write("\r\n");


	HttpSession hs = request.getSession(false);
	if (hs.getAttribute("currentFolder") == null) {
		hs.setAttribute("currentFolder", "/");
	}
	//System.out.println("path is : "+request.getParameter("path"));
	Repository repository = new TransientRepository();
	Session jcrsession = repository.login(new SimpleCredentials(
			Config.JCR_USERNAME, Config.JCR_PASSWORD.toCharArray()));

      out.write("\r\n");
      out.write("<div class=\"strip_details\">\r\n");
      out.write("\t<div class=\"home_heading\"></div>\r\n");
      out.write("\t<div class=\"path\">\r\n");
      out.write("\t\t<span>Path &nbsp; :</span><span><span id='/'\r\n");
      out.write("\t\t\tstyle='cursor: pointer' onclick='getFileSystem(this.id)'> Home</span></span>\r\n");
      out.write("\t\t<!-- <span class=\"path_color\">Main Folder</span> -->\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<a href=\"user_dasboard.htm\">\r\n");
      out.write("\t\t<div class=\"dasboard\">DASHBOARD</div>\r\n");
      out.write("\t</a>\r\n");
      out.write("\t<div class=\"right_icon\">\r\n");
      out.write("\t\t<div class=\"thum_view\" onClick=\"tile_view();\" title=\"Folder View\"></div>\r\n");
      out.write("\t\t<div class=\"list_view\" onClick=\"list_view();\" title=\"List View\"></div>\r\n");
      out.write("\t\t<span>&nbsp;</span>\r\n");
      out.write("\t\t<div class=\"right_view right_view_color\" onClick=\"left_view();\"\r\n");
      out.write("\t\t\ttitle=\"Right View\"></div>\r\n");
      out.write("\t\t<div class=\"bottom_view\" onClick=\"bottom_view();\" title=\"Bottom View\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"user_dasboard_1\">\r\n");
      out.write("\r\n");
      out.write("\t<!--------------//// ALLL CHAT SUB HTML PAGES HERE STARED HERE ------------>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-------/// Chat Downarrow option--------->\r\n");
      out.write("\r\n");
      out.write("\t<!------------/// Chat Downarrow Option End ------>\r\n");
      out.write("\t<!--------------- ALL CHAT SUB HTML FOLDER END HERE ---------------->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"middle-pane middle-pane_new left_border\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-------------/// ROW FIRST CONTENT STARTED HERE ---------------------->\r\n");
      out.write("\t\t<div class=\"thum_view_middle new_width\" id=\"folderView\">\r\n");
      out.write("\t\t\t<div class=\"row_text middle_tab \">\r\n");
      out.write("\t\t\t\t<div class=\"white\">\r\n");
      out.write("\t\t\t\t\t<div class=\"icon_folder\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"folder_text\">Folder View</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"claer\"></div>\r\n");
      out.write("\t\t\t<div class=\"row_content\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t");

						System.out.println("check in 0 ");
						try {
							Node root = jcrsession.getRootNode();
							NodeIterator nodeIterator = root.getNodes();
							for (NodeIterator nit = root.getNodes(); nit.hasNext();) {
								Node node = nit.nextNode();
								Property prp = node
										.getProperty(JcrConstants.JCR_PRIMARYTYPE);
								if (!(node.getProperty(JcrConstants.JCR_PRIMARYTYPE)
										.getString().equals(JcrConstants.NT_RESOURCE))) {
									//System.out.println(node.getProperty(JcrConstants.JCR_LASTMODIFIED).getDate());
								}
								//if(!node.getName().equals(JcrConstants.JCR_SYSTEM)&&(!node.getProperty(JcrConstants.JCR_PRIMARYTYPE).getString().equals(JcrConstants.NT_RESOURCE))){
								//System.out.println("node type is : "+node.getPrimaryNodeType().getName());	
								if (node.getPrimaryNodeType().getName()
										.equals(JcrConstants.NT_FOLDER)) {
									for (PropertyIterator pit = node.getProperties(); pit
											.hasNext();) {
										Property prop = pit.nextProperty();
										if (prop.isMultiple()) {
											Value[] prp1 = prop.getValues();
											for (int j = 0; j < prp1.length; j++) {
												Value val = prp1[j];
												//System.out.println(val+" property value is : "+val.getString());
											}
										} else {
											//	System.out.println(prop+" property value is : "+prop.getValue().getString());
											//System.out.println(node.getProperty(JcrConstants.JCR_CREATED).getDate());
										}
									}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<li id=\"");
      out.print(node.getPath());
      out.write("\" ondblclick=\"getFileSystem(this.id)\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"folder_icon\"></div> <span> ");
      out.print(node.getPath().substring(
								node.getPath().lastIndexOf('/') + 1));
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t");

						}
							}
							//	root.getNode("childNode").remove();
							//	root.getNode("childNode[3]").remove();
							//	root.getNode("childNode[4]").remove();
							//	root.getNode("childNode[5]").remove();
							//	root.getNode("childNode[6]").remove();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"thum_view_middle new_width\" id=\"fileView\">\r\n");
      out.write("\t\t\t<div class=\"row_text middle_tab \">\r\n");
      out.write("\t\t\t\t<div class=\"white\">\r\n");
      out.write("\t\t\t\t\t<div class=\"icon_folder\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"folder_text\">File View</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"claer\"></div>\r\n");
      out.write("\t\t\t<div class=\"row_content\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t");

						System.out.println("check in 0 ");
							root = jcrsession.getRootNode();
							nodeIterator = root.getNodes();
							for (NodeIterator nit = root.getNodes(); nit.hasNext();) {
								Node node = nit.nextNode();
								Property prp = node
										.getProperty(JcrConstants.JCR_PRIMARYTYPE);
								if (!(node.getProperty(JcrConstants.JCR_PRIMARYTYPE)
										.getString().equals(JcrConstants.NT_RESOURCE))) {
									//System.out.println(node.getProperty(JcrConstants.JCR_LASTMODIFIED).getDate());
								}
								//if(!node.getName().equals(JcrConstants.JCR_SYSTEM)&&(!node.getProperty(JcrConstants.JCR_PRIMARYTYPE).getString().equals(JcrConstants.NT_RESOURCE))){
								//System.out.println("node type is : "+node.getPrimaryNodeType().getName());	
								if (node.getPrimaryNodeType().getName()
										.equals(JcrConstants.NT_FILE)) {
									for (PropertyIterator pit = node.getProperties(); pit
											.hasNext();) {
										Property prop = pit.nextProperty();
										if (prop.isMultiple()) {
											Value[] prp1 = prop.getValues();
											for (int j = 0; j < prp1.length; j++) {
												Value val = prp1[j];
												//System.out.println(val+" property value is : "+val.getString());
											}
										} else {
											//	System.out.println(prop+" property value is : "+prop.getValue().getString());
											//System.out.println(node.getProperty(JcrConstants.JCR_CREATED).getDate());
										}
									}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<li id=\"");
      out.print(node.getPath());
      out.write("\" ondblclick=\"getFileSystem(this.id)\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"folder_icon\"></div> <span> ");
      out.print(node.getPath().substring(
								node.getPath().lastIndexOf('/') + 1));
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t");

						}
							}
							//	root.getNode("childNode").remove();
							//	root.getNode("childNode[3]").remove();
							//	root.getNode("childNode[4]").remove();
							//	root.getNode("childNode[5]").remove();
							//	root.getNode("childNode[6]").remove();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-------------------/// ROW FIRST CONTENT END HERE ----------------------->\r\n");
      out.write("\r\n");
      out.write("\t\t<!------------------/// LIST VIEW STARTED HERE ------------------------->\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"list_view_middle\">\r\n");
      out.write("\t\t\t<div class=\"list_view_information\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li>&nbsp;</li>\r\n");
      out.write("\t\t\t\t\t<li>Name</li>\r\n");
      out.write("\t\t\t\t\t<li>Size</li>\r\n");
      out.write("\t\t\t\t\t<li>Date Modified</li>\r\n");
      out.write("\t\t\t\t\t<li>Author</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"list_view_content\">\r\n");
      out.write("\t\t\t\t");

					//	System.out.println("check in 2 ");
						for (NodeIterator nit = root.getNodes(); nit.hasNext();) {
							Node node = nit.nextNode();
							Property prp = node
									.getProperty(JcrConstants.JCR_PRIMARYTYPE);
							if (!(node.getProperty(JcrConstants.JCR_PRIMARYTYPE)
									.getString().equals(JcrConstants.NT_RESOURCE))) {
								//System.out.println(node.getProperty(JcrConstants.JCR_LASTMODIFIED).getDate());
							}
							//if(!node.getName().equals(Config.JCR_SYSTEM)&&(!node.getProperty(JcrConstants.JCR_PRIMARYTYPE).getString().equals(JcrConstants.NT_RESOURCE))){
							if (node.getPrimaryNodeType().getName()
									.equals(JcrConstants.NT_FOLDER)) {
								//System.out.println("node type is : "+node.getPrimaryNodeType().getName());
								for (PropertyIterator pit = node.getProperties(); pit
										.hasNext();) {
									Property prop = pit.nextProperty();
									//System.out.println(prop+" property value is : "+prop.getValue().getString());
									//System.out.println(node.getProperty(JcrConstants.JCR_CREATED).getDate());

								}
				
      out.write("\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><div class=\"icon_list\"></div></li>\r\n");
      out.write("\t\t\t\t\t<li>");
      out.print(node.getPath().substring(
								node.getPath().lastIndexOf('/') + 1));
      out.write("</li>\r\n");
      out.write("\t\t\t\t\t<li></li>\r\n");
      out.write("\t\t\t\t\t<li></li>\r\n");
      out.write("\t\t\t\t\t<li></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t");

					}
						}
						//	child.setProperty("anyProperty","Blah 5");
						//	child.getSession().move(child.getPath(), child.getParent().getPath() + "" + "newName3");
						//	root.getNode("world[2]").remove();
					} finally {
						//	jcrsession.save();
						jcrsession.logout();
					}
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!---------------/// LIST VIEW END HERE ----------------------------------->\r\n");
      out.write("\r\n");
      out.write("\t\t<!----------------/// RIGHT PART STARTED HERE ------------------->\r\n");
      out.write("\t\t<div class=\"right_icon_main option_left\">\r\n");
      out.write("\t\t\t<div class=\"right-pane\">\r\n");
      out.write("\t\t\t\t<ul class=\"icon_left_descri\">\r\n");
      out.write("\t\t\t\t\t<li class=\"padding_less\"><a href=\"#\" onClick=\"left_icon()\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"left_icon\"></div>\r\n");
      out.write("\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"peroperty right_tab\"><a href=\"#\">PROPERTIES</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_right\"></div></li>\r\n");
      out.write("\t\t\t\t\t<div class=\"content_right\"></div>\r\n");
      out.write("\t\t\t\t\t<li class=\"note right_tab\"><a href=\"#\">NOTES</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_right\"></div></li>\r\n");
      out.write("\t\t\t\t\t<div class=\"content_right\"></div>\r\n");
      out.write("\t\t\t\t\t<li class=\"keyword right_tab\"><a href=\"#\">KEYWORDS</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_right\"></div></li>\r\n");
      out.write("\t\t\t\t\t<div class=\"content_right\"></div>\r\n");
      out.write("\t\t\t\t\t<li class=\"history_right right_tab\"><a href=\"#\">HISTORY</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_right\"></div></li>\r\n");
      out.write("\t\t\t\t\t<div class=\"content_right\"></div>\r\n");
      out.write("\t\t\t\t\t<li class=\"prew right_tab\"><a href=\"#\">PREVIEW</a>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_right\"></div></li>\r\n");
      out.write("\t\t\t\t\t<div class=\"content_right\"></div>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!------------------------------/// LEFT ICON ONLY --------------->\r\n");
      out.write("\t\t\t<div class=\"left_icon_only\">\r\n");
      out.write("\t\t\t\t<div class=\"only_left_icon\">\r\n");
      out.write("\t\t\t\t\t<a href=\"#\" onClick=\"left_icon()\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"left_icon back_pos\"></div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<div class=\"claer\"></div>\r\n");
      out.write("\t\t\t\t\t<ul class=\"icon_left_descri new_icon_view\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"peroperty right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"note right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"keyword right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"perim right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"history_right right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"prew right_tab\"></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!------------------------------/// LEFT ICON ONLY END  --------------->\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!----------------/// RIGHT PART END HERE ------------------->\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-------------/// MIDDLE END HERE ---------------->\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"claer\"></div>\r\n");
      out.write("</div>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
