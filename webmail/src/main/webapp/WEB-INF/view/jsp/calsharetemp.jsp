<%@page import="webmail.model.Shared"%>
<%@page import="webmail.wsdl.Folder"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

 <div class="invite_people_box">
 		<%
 		List<Shared> srdlst=(List<Shared>)request.getAttribute("sharedlist");
 	//	System.out.println("current"+currentFolder);
 		HttpSession hs=request.getSession();
 		String urid=hs.getAttribute("id").toString();
 		String dom="";
 		String arr[]=urid.split("@");
 		if(arr.length>1)
 		{
 			dom=arr[1];
 		}
        %>

                           <%
                           for(Shared srd: srdlst)
                           {
                          if(srd!=null)
                          {
                        	 
                        	  String f=srd.getWriteaccess();
                        	  String whichid=srd.getUserwhich();
                        	  int sn=srd.getSno();
                        	  %>
                            
                             <div class="select_append">
                             <div class="share_content">
                             <input class="userforshare userforshhare"  type="text" readonly="readonly" value="<%=whichid %>" /></div>
                             <div class="select_option">
                            
                            	<%
                             
                             if(f.equals("ur")){
                            	 %>
                            	 <div class="can_edite">
                                            <select  class="permissionsforshare">
                                               <option value="ur" selected="selected">Read</option>
                                              <option value="uw" >Read/Write </option> 
                                                <option value="us">All </option> 
                                           </select>
                                      </div>
                            	 
                            	 <%
                            	 }
                         if(f.equals("us")){
                            	 %>
                          		<div class="can_edite">
                                            <select  class="permissionsforshare">
                                               <option value="ur">Read </option> 
                                               <option value="uw" >Read/Write </option> 
                                               <option value="us" selected="selected">All </option> 
                                           </select>
                                      </div> 
                            	 
                            	 <%
                            	}
                            if(f.equals("uw")){
                            	 %>
                              <div class="can_edite">
                                            <select  class="permissionsforshare">
                                               <option value="ur">Read </option>
                                               <option value="uw" selected="selected">Read/Write </option>
                                               <option value="us">All </option>
                                           </select>
                                      </div>
                            	 
                            	 <%
                             }
                             %>
                                      </div>
                                      <div class="remove_select delete_shre"> <img onclick="shareDelete(this.id,this.name)"  id="<%=whichid %>" name="<%=sn %>" src="images/tool.png" /></div>
                                      <div class="clear"></div></div>
                                      <div class="clear"></div> 
                                      <%
                           }
                           }
                                      %>
                         </div>          
          