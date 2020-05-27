<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">

function setEmoji(npmsg)
{
	if(npmsg.indexOf(":)")>=0 || npmsg.indexOf(":=)")>=0 || npmsg.indexOf(":-)")>=0)
	{
		npmsg=npmsg.replace(/:\)|:=\)|:-\)/g, "<img src='chat/happy.gif' title=':)'/>");
	}
	if(npmsg.indexOf(":(")>=0 || npmsg.indexOf(":=(")>=0 || npmsg.indexOf(":-(")>=0)
	{
		npmsg=npmsg.replace(/:\(|:=\(|:-\(/g, "<img src='chat/sad.gif' title=':(' />");
	}
	if(npmsg.indexOf(">:o")>=0 || npmsg.indexOf("x(")>=0 || npmsg.indexOf(":@")>=0 || npmsg.indexOf(":-@")>=0 || npmsg.indexOf(":=@")>=0)
	{
		npmsg=npmsg.replace(/>:o|x\(|:@|:-@|:=@/g, "<img src='chat/angry.gif' title='>:o' />");
	}
	if(npmsg.indexOf("8-)")>=0 || npmsg.indexOf("8=)")>=0 || npmsg.indexOf("B-)")>=0 || npmsg.indexOf("B=)")>=0)
	{
		npmsg=npmsg.replace(/8-\)|8=\)|B-\)|B=\)/g, "<img src='chat/cool.gif' title='B-)' />");
	}
	if(npmsg.indexOf(":^0")>=0 || npmsg.indexOf(":D")>=0 || npmsg.indexOf(":-D")>=0 || npmsg.indexOf(":=D")>=0 || npmsg.indexOf(":d")>=0 || npmsg.indexOf(":-d")>=0 || npmsg.indexOf(":=d")>=0)
	{
		npmsg=npmsg.replace(/:\^0|:D|:-D|:=D|:d|:-d|:=d/g, "<img src='chat/lol.gif' title=':^0' />");
	}
	if(npmsg.indexOf("8-)")>=0 || npmsg.indexOf("8=)")>=0 || npmsg.indexOf("B-)")>=0 || npmsg.indexOf("B=)")>=0)
	{
		npmsg=npmsg.replace(/8-\)|8=\)|B-\)|B=\)/g, "<img src='chat/cool.gif' title='B-)' />");
	}
	if(npmsg.indexOf(":x")>=0 || npmsg.indexOf(":*")>=0 || npmsg.indexOf(":-*")>=0 || npmsg.indexOf(":=*")>=0)
	{
		npmsg=npmsg.replace(/:x|:\*|:-\*|:=\*/g, "<img src='chat/heart.gif' title=':x' />");
	}
	if(npmsg.indexOf(";)")>=0 || npmsg.indexOf(";-)")>=0 || npmsg.indexOf(";=)")>=0 )
	{
		npmsg=npmsg.replace(/;\)|;-\)|;=\)/g, "<img src='chat/naughty.gif' title=';)' />");
	}
	if(npmsg.indexOf(";(")>=0 || npmsg.indexOf(";-(")>=0 || npmsg.indexOf(";=(")>=0 || npmsg.indexOf(":'(")>=0)
	{
		npmsg=npmsg.replace(/:'\(|;\(|;-\(|;=\(/g, "<img src='chat/cry.gif' title=';(' />");
	}
	if(npmsg.indexOf("|-)")>=0 || npmsg.indexOf("I-)")>=0 || npmsg.indexOf("I=)")>=0 )
	{
		npmsg=npmsg.replace(/\|-\)|I-\)|I=\)/g, "<img src='chat/sleepy.gif' title='|-)' />");
	}
	return npmsg;
}

function keyPresChatSearch(e) {
	 var charKeyCode = e.keyCode ? e.keyCode : e.which;
	
	 if(charKeyCode == 13)
	    {
		 getAllUserListChat();
	    }
}

function getAllUserListChat()
	{
	var serchCnt=$("#serchCntId").val();
	if(serchCnt!=null && serchCnt!="")
		{
		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getAllUserListChat",
			data : {
				
				'serchCnt' : serchCnt
			},
			success : function(data) {
			$("#np_chat_searchajax").html(data);
			$("#np_chat_search").hide();
			$("#np_chat_searchajax").show();
			document.getElementById('action_gif').style.display= 'none';
		}
		});
		}
	}
	function getChatBox(username) {
		var box = null;
		var chatname = username.split("name");
		var userchatid = username.split("@");

		var imagesrc = document.getElementById(chatname[0] + "presence").src;
		var imagesp = imagesrc.split("images/");
		var image = imagesp[1];

		var id = "#" + userchatid[0] + "open_chat_box";
		$("#appendchatdiv").append(
				"<div id='"+userchatid[0]+"open_chat_box'></div>");

		$(id).append("<div id='"+userchatid[0]+"chat_div'></div>");
		var chatdivid = "#" + userchatid[0] + "chat_div";

		box = $(chatdivid).chatbox({
			/*
				unique id for chat box
			 */
			id : "me",
			user : {
				key : "value"
			},
			/*
				Title for the chat box
			 */
			title : chatname[0],
			imagenm : image,
			/*
				messageSend as name suggest,
				this will called when message sent.
			 */
			messageSent : function(id, user, msg) {
				$(chatdivid).chatbox("option", "boxManager").addMsg(id, msg,chatdivid);
			}
		});
	}
</script>
<script language="javascript">
	function onloadmethod() {
		dwr.engine.setActiveReverseAjax(true);
		document.getElementById("onlineradio").checked = true;
	}
</script>

<script type="text/javascript">
	function updateChatBox(msglist) {
		var id = "#" + msglist[0] + "chat_div";
		id=id.replace('.','\\.');
		var boxid = msglist[0] + "chatboxcreated";
		
		var elementExists = document.getElementById(boxid);
		boxid=boxid.replace('.','\\.');
		var isvis = $("#" + boxid).is(":visible");
		if (elementExists == null) {
			document.getElementById(msglist[2] + "name").click();
		} else if (!isvis) {
			document.getElementById(boxid).style.display = "block";
		}
		var chk=0;
		try
		{
		var hid_id=$("#"+boxid).children('.new_header_top').children('span').children('.hid_chat_nm').html();
		if(hid_id==msglist[4])
			{
			var npmsg=msglist[3];
			npmsg=setEmoji(npmsg);
			$(id).append(npmsg);
			chk=1;
			}
		else
			{
			var npmsg=msglist[1];
			npmsg=setEmoji(npmsg);
			$(id).append(npmsg);
			chk=1;
			$("#"+boxid).children('.new_header_top').children('span').children('.hid_chat_nm').html(msglist[4]);
			}
		}
		catch (e) {
			if(chk==0)
				{
				var npmsg=msglist[1];
				npmsg=setEmoji(npmsg);
				$(id).append(npmsg);
				}
			// TODO: handle exception
		}
		var divid = msglist[0] + "chat_div";
		//divid=divid.replace('.','\\.');
		var divv = document.getElementById(divid);
		if (divv.scrollHeight > divv.clientHeight) {
			divv.scrollTop = divv.scrollHeight;
		}
	}

	
	function updateChatBoxOffline(msglist) {
		var id = "#" + msglist[0] + "chat_div";
		var frmid=msglist[0];
		/* id=id.replace('.','\\.');
		var boxid = msglist[0] + "chatboxcreated";
		
		var elementExists = document.getElementById(boxid);
		boxid=boxid.replace('.','\\.');
		var isvis = $("#" + boxid).is(":visible");
		if (elementExists == null) {
			document.getElementById(msglist[2] + "name").click();
		} else if (!isvis) {
			document.getElementById(boxid).style.display = "block";
		} */
		var chk=0;
		var npmsg="";
		try
		{
		
		if(msglist.length>=4)
			{
			 npmsg=msglist[3];
			npmsg=setEmoji(npmsg);
			
			chk=1;
			}
		else
			{
			 npmsg=msglist[1];
			npmsg=setEmoji(npmsg);
			
			chk=1;
			
			}
		}
		catch (e) {
			if(chk==0)
				{
				 npmsg=msglist[1];
				npmsg=setEmoji(npmsg);
				
				}
			// TODO: handle exception
		}
	
	}
</script>

<script type="text/javascript">
	function removeLastAppended(anyid) {
	//	alert("yo");
		var id = "#" + anyid;
		$(id).remove();
	}
</script>

<script type="text/javascript">
function remChatFriend(buddyId)
{
	$.ajax({
		url : "${pageContext.request.contextPath}/remChatFriend",
		data : {
			buddyJID : buddyId,
		},
		success : function(data) {
			$("#buddyInvite").val("");
			if(data=="success")
				showmsg("success","Removed successfully");
			else
				{
				showmsg("alert","Error occurred");
				}
		}
	});
}
	function sendBuddyInvite() {
		var buddyId = $("#buddyInvite").attr('val');
		//alert(buddyId);
		$.ajax({
			url : "${pageContext.request.contextPath}/inviteBuddy",
			data : {
				buddyJID : buddyId,
			},
			success : function(data) {
				$("#buddyInvite").val("");
				showmsg("success",data);
			}
		});
	}
</script>

<script type="text/javascript">
	function friendRequest(from) {
		var acceptfrom = from.split("acceptbtn");
		$.ajax({
			url : "${pageContext.request.contextPath}/respondFrndReq",
			data : {
				fromJID : acceptfrom[0],
			},
			success : function(data) {
				showmsg('success',data);
			}
		});
	}
</script>

<script type="text/javascript">
	function friendDeny(from) {
		var acceptfrom = from.split("denybtn");
		$.ajax({
			url : "${pageContext.request.contextPath}/denyFrndReq",
			data : {
				fromJID : acceptfrom[0],
			},
			success : function(data) {
				showmsg('success',data);
			}
		});
	}
</script>

<script type="text/javascript">
	function createChatRow(addDivs) {
		//alert("sdfasd");
		
		$(".chat_inner_content").html(addDivs);
		//document.getElementById("test").innerHTML = addDivs;
	}
</script>

<script type="text/javascript">
	function closeConnection() {
		$.ajax({
			url : "${pageContext.request.contextPath}/logoutChat",
			success : function(data) {
			}
		});

	}
</script>

<script type="text/javascript">
	function reconnectConnection() {
		$.ajax({
			url : "${pageContext.request.contextPath}/reconnectChat",
			success : function(data) {
			}
		});

	}
</script>

<script type="text/javascript">
	function changePresence(pres) {
		//var pres = document.getElementById("statusChangeSelect").value;
	//	alert(pres);
		if(pres=="offline"){
		$("img.online_green_1").attr("src","chat/offline.png");
		}else if(pres=="online"){
			$("img.online_green_1").attr("src","chat/green.png");
	}else if(pres=="dnd"){
		$("img.online_green_1").attr("src","chat/block.png");
}else if(pres=="away"){
	$("img.online_green_1").attr("src","chat/busy.png");}
		$.ajax({
			url : "${pageContext.request.contextPath}/changedPresence",
			data : {
				presmode : pres,
			},
			success : function(data) {
			}
		});
	}
</script>

<script type="text/javascript">
	function getAltImage(imgid) {
		var pic = document.getElementById(imgid);
		pic.src = "images/blank_man.jpg"
	}
</script>





<script type="text/javascript">
 function remMailByUid(tp, cnt) {
	//alert(cnt)
	var div_uid="";
	if(tp=="uid")
		{
		div_uid="#div_"+cnt;
		}
	else if(tp=="msgno")
		{
		div_uid=".msgno_"+cnt;
		}
	//alert("divid="+div_uid)
	if(div_uid!="")
		{
		var note = document.getElementById("inb_cnt_div");
		var notetext = note.querySelector(div_uid);
		
		if(notetext!=null && notetext!="")
			{
			if($("#hid_open_search").val()!="true")
				{
				 var fdrname = document.getElementById('hid_active_fldr').value;
				 if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
					 {
					 var pview=document.getElementById("hid_previewPane").value;
					 
					 
					 
					 

	   					$.ajax({
	   				         type: "GET",
	   				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
	   				         data: {'path':fdrname},
	   				         contentType: "application/json",
	   				         success: function (data) {
	   				        	if(data=="<$expire$>")
	   				     	{
	   				     	location.href ="${pageContext.request.contextPath}/inbox";
	   				     		}
	   				        	 	 var arr=data.split("$");
	   				           
	   				           document.getElementById("hid_pagi_allmail").value=arr[1];
	   				    
			
	document.getElementById('div_for_setting').style.display='none';
	//noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
		//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
		
	document.getElementById('mail_pagi').style.display= 'block';
 document.getElementById('search_pagi').style.display= 'none';
 document.getElementById('hid_pagi_search_allmail').value="";
 document.getElementById('hid_pagi_search_pcnt').value="";
 document.getElementById('hid_pagi_search_type').value="";
	
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	
	pcnt=pcnt-1
	var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all>=allml)
		{
		pcnt=pcnt-1
		var sml=pcnt*cntlmt;
		var all=pcnt*cntlmt;
		}
	
	var delcnt=1;
	 var sno= sml+cntlmt-delcnt;
	  document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
	var start=''+sno;
	var end=delcnt;
	

		
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInboxRAjaxDel",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					 dataType: "json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data.res=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
						
						else
							{
						
						
						window.prevflg="true";
						window.nextflg="true";
							
						try
						{
							var note1 = document.getElementById("inb_cnt_div");
							if(data.uuid!=null && data.uuid!="")
								{
								var uuid=data.uuid;
								var notetext2 = note1.querySelector("#div_"+uuid);
								if(notetext2==null || notetext2=="")
								{
								var notetext1 = note1.querySelector(div_uid);
							
							if(notetext1!=null && notetext1!="")
								{
							
							$( div_uid ).remove();	
							$("#inb_cnt_div").append(data.res);
						
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						getAllMailCountCurrent(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
						 document.getElementById('action_gif').style.display= 'none';
								}
								}
								}
						}
						catch (e) {
							// TODO: handle exception
						}
						
						
						
						
						
						
					}}
				});

	//} 
	
	   				        
	   				         }
	   				     });
					 
					 
					 
					 
					 
					 
					 
					 }
				}
			}
		}
} 



function changeMailByUid(uid) {

	var note = document.getElementById("inb_cnt_div");
	var notetext = note.querySelector('#div_'+uid);
	
	if(notetext!=null && notetext!="")
		{
		
		if($("#hid_open_search").val()!="true")
		{
			
			var div1Class = $('#div_'+uid).attr('class');
			
			var indx=-1;
			try
			{
			indx=div1Class.indexOf("selected_row");
			}
			catch (e) {
				// TODO: handle exception
			}
			if(indx<0)
				{
			   var fdrname = document.getElementById('hid_active_fldr').value;
		if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
		{
			var pview=document.getElementById("hid_previewPane").value;
			$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/changeMailInbox",
			data : {
				'folder' : fdrname,
				'uid' : uid,
				'pview' : pview
			},
			contentType : "application/json",
			success : function(data) {
				if(data=="<$expire$>")
					{
					location.href ="${pageContext.request.contextPath}/inbox";
					}
				else
					{
					$('#div_'+uid).replaceWith(data);
					
				
				
				$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
            	$('.row_content').hover(
        				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
         				 function(){ $(this).css('border-left', "1px solid #fff") 
        				 }
  					);
				inboxUnread();
			
				
			}}
		});
		}
		}
		
		}
		}
}

function sendresponse(id)
{
    var respond_to =$('#hid_cal_inv_from').val();
    var uuid = $('#hid_cal_inv_uuid').val();
   
    document.getElementById('mail_sending').style.display= 'block';
    $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/sendInvitationResponse",
        data: {'respond_to':respond_to,'reply_status':id,'uuid':uuid},
        success: function (data) 
        {
              document.getElementById('mail_sending').style.display= 'none';
              var success = generate_in('alert');
              $.noty.setText(success.options.id, "Response mail send successfully !");
              setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
         }
        });
}


</script>
<script type="text/javascript">
function saveEDMSMailAttachByName(uid,nm) {
		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/saveEDMSMailAttachByName",
			data : {
				'uid' : uid,'nm':nm
				},
			contentType : "application/json",
			success : function(data) {
				
				document.getElementById('action_gif').style.display= 'none';
				if(data=="true" || data=="TRUE")
					{
					var success = generate_in('alert');
					 $.noty.setText(success.options.id, "Saved successfully.");
					 setTimeout(function () {  $.noty.close(success.options.id); }, 4000);
					}
			}	
			
		});
		
}

function viewMailAttachByName(uid,nm)
{
	//alert(uid+"---"+nm);
	

	
var arr=nm.split(".");
var ext=arr[arr.length-1];
if(ext=="png" || ext=="PNG" || ext=="jpg" || ext=="JPG" || ext=="jpeg" || ext=="JPEG" || ext=="gif" || ext=="GIF")
	{
	
	/* var uri = nm;
	var res = encodeURIComponent(uri);
	window.open("${pageContext.request.contextPath}/viewattachment?uid="+uid+"&nm="+res,'_blank'); */
	document.getElementById('action_gif').style.display= 'block';
	/* var requestPage="${pageContext.request.contextPath}/viewattachment";
	jQuery.get(requestPage,
                           {
                    'uid' : uid, 'nm' : nm
            },
          {
            	cache: true 
          },
                    function( data ) {
        	  document.getElementById('action_gif').style.display= 'none';
        	  $("#att_disp_cnt").html(data);
          }
          ); */
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/viewIMGMailAttachByName",
		data : {
			'uid' : uid, 'nm' : nm
			},
		contentType : "application/json",
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
				}
			 document.getElementById('action_gif').style.display= 'none';
			var str="<img style='max-width:100%; max-height:100%;' src='data:image/jpg;base64,"+data+" ' />";

			$("#att_disp_cnt").html(str);
			$(".web_dialog_overlay_black").show();	
			
		}	

		});
	}
 else
	{
	 document.getElementById('action_gif').style.display= 'block';
	 $.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/viewMailAttachByName",
		data : {
			'uid' : uid,'nm':nm
			},
		contentType : "application/json",
		success : function(data) {
			document.getElementById('action_gif').style.display= 'none';
		//	alert(data);
		if(data=="notsupported")
			{
			var success = generate_in('alert');
				 $.noty.setText(success.options.id, "File format not supported to view");
				 setTimeout(function () {  $.noty.close(success.options.id); }, 4000);
			}
		else
			{
			/* var uri = data;
			var res = encodeURIComponent(uri);
			window.open('${pageContext.request.contextPath}/js/web/viewer.html?file='+res, '_blank'); */
			   var x = document.createElement("EMBED");
			//path=path.replace(/\//g, "////");
            x.setAttribute("src", data);
            x.setAttribute("height", "100%");
            x.setAttribute("width", "100%");
                $('#att_disp_cnt_pdf').append(x);
                $(".web_dialog_overlay_black_pdf").show();	
    
			}
		}	
		
	});
	} 
}
function getUnreadMailCountInbox() {
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/getUnreadMailCountInbox",
		data : {
			'fdr' : 'inbox'
			},
		contentType : "application/json",
		success : function(data) {
			
			$("#hid_unread_inbox").val(data);
			
		}
	});
}
function getAllMailCountCurrent(folderPath){
	//alert("meeeeeeeeeeeeeeeeeeeSub="+folderPath);
	 $.ajax({
         type: "GET",
         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
         data: {'path':folderPath},
         contentType: "application/json",
         success: function (data) {
        	 if(data=="<$expire$>")
        		{
        		location.href ="${pageContext.request.contextPath}/inbox";
        			}
        	 var arr=data.split("$");
           
           document.getElementById("hid_pagi_allmail").value=arr[1];
           var all=parseInt(arr[1]);
           var msg="";
           if(all>0)
        	   {
        	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
        	pcnt--;
        	var start=pcnt*cntlmt+1;
        	var end=start+cntlmt-1;
        	if(end>all)
        		{
        		end =all;
        		}
        	 	msg=start+" - "+end +" of "+all;
        	   }
           else
        	   {
        	   msg=folderPath+" is empty.";
        	   }
           $("#pagination_div").html(msg);
           msg=msg.replace(/&nbsp;/g , " ");
           $("#pagination_div").attr('title', msg);
         }
     });
	
}
/* 

function notifyMe(fid, sub) {
	  if (!window.Notification) {
	    alert('Desktop notifications not available in your browser.'); 
	    return;
	  }

	  if (window.Notification.permission !== "granted")
		  window.Notification.requestPermission();
	  else {
	    var notification = new Notification('New mail Notification', {
	     	icon: 'images/logo_login.png',
	    	body: "Form: "+fid+"\nSubject: "+sub,
	    });

	  
	    
	  }

	}  */

	function autoWebmailInboxRefreshNP(sub, fid, msguid) {
		
		

		
		var note = document.getElementById("inb_cnt_div");
		var notetext = note.querySelector('#div_'+msguid);
		if(notetext==null || notetext=="")
			{
			
			var cnt=0; 
			var hid_dnoti="New mail notifications on";
				try
				{
				hid_dnoti=$("#hid_dnoti").val();
				}
				catch (e) {
					// TODO: handle exception
				}

				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getUnreadMailCountInbox",
					data : {
						'fdr' : 'inbox'
						},
					contentType : "application/json",
					success : function(data) {
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
						}
						cnt=parseInt(data);
						if(cnt!=0)
					 		$("#hid_unread_inbox").val(cnt);
						var pfldr=document.getElementById('hid_active_fldr').value	;
						
						if( ( $('#hid_open_setting').val()!="true" ) && ($('#hid_open_search').val()!="true")) //&& ($('#div_for_compose').css('display')!='block' || $('#div_for_compose').css('display')=='none'))
							{
							
							if(pfldr=="INBOX" || pfldr=="Inbox" || pfldr=="inbox")
							{
						
				
							var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
				
							if(pcnt==1)
							{
				
				
				
				var pview=document.getElementById("hid_previewPane").value;
				$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/changeMailInbox",
				data : {
					'folder' : pfldr,
					'uid' : msguid,
					'pview' : pview
				},
				contentType : "application/json",
				success : function(data) {
					if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
						}
					else
						{
						
						var note1 = document.getElementById("inb_cnt_div");
						var notetext1 = note1.querySelector('#div_'+msguid);
						if(notetext1==null || notetext1=="")
							{
						try
						{
							$("#inb_cnt_div").children("div:last").remove();
							$("#inb_cnt_div").prepend(data);
						
					
					
					$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
	            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
	            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
	            	$('.row_content').hover(
	        				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
	         				 function(){ $(this).css('border-left', "1px solid #fff") 
	        				 }
	  					);
	            	if(cnt!=0)
	            		$("#unread_inbox").html("("+cnt+")");
	            	
	            	try
					{
					if(hid_dnoti=="New mail notifications on")
						{
						if (!window.Notification) {
							  //  alert('Desktop notifications not available in your browser.'); 
							    return;
							  }

							  if (window.Notification.permission !== "granted")
								  window.Notification.requestPermission();
							  else {
							    var notification = new Notification('New mail Notification', {
							     	icon: 'images/logo_login.png',
							    	body: "Form: "+fid+"\nSubject: "+sub,
							    });

							  
							    
							  }
						}
					}
					catch (e) {
						// TODO: handle exception
					}
	            	getAllMailCountCurrent(pfldr);
						}
						catch (e) {
							// TODO: handle exception
						}
				}
						}
			}
			});
				
			}
			else
				{
				//page count !=1
				if(cnt!=0)
				$("#unread_inbox").html("("+cnt+")");
					//notifyMe(fid, sub)
					try
						{
						if(hid_dnoti=="New mail notifications on")
						{
						
						if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
						getAllMailCountCurrent(pfldr);
				}
							
							
							
			}
			else
				{
				//folder!=inbox
				if(cnt!=0)
				$("#unread_inbox").html("("+cnt+")");
					//notifyMe(fid, sub)
					try
						{
						if(hid_dnoti=="New mail notifications on")
						{
						
						if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
				}
							
			}
				else
					{
					//setting or search
					if(cnt!=0)
				$("#unread_inbox").html("("+cnt+")");
					//notifyMe(fid, sub)
					try
						{
						if(hid_dnoti=="New mail notifications on")
						{
						
						if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
					}
		
	}
				});
			}
	}
	
function autoWebmailInboxRefreshNP1(sub, fid) {
//alert("all");
	
		var cnt=0; 
var hid_dnoti="New mail notifications on";
	try
	{
	hid_dnoti=$("#hid_dnoti").val();
	}
	catch (e) {
		// TODO: handle exception
	}

	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/getUnreadMailCountInbox",
		data : {
			'fdr' : 'inbox'
			},
		contentType : "application/json",
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
			}
			cnt=parseInt(data);
		 $("#hid_unread_inbox").val(cnt);
			var pfldr=document.getElementById('hid_active_fldr').value	;
			
			if( ( $('#hid_open_setting').val()!="true" ) && ($('#hid_open_search').val()!="true")) //&& ($('#div_for_compose').css('display')!='block' || $('#div_for_compose').css('display')=='none'))
				{
				
				if(pfldr=="INBOX" || pfldr=="Inbox" || pfldr=="inbox")
				{
					//getAllMailCountCurrent(pfldr);
					
					
					
					 $.ajax({
         type: "GET",
         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
         data: {'path':pfldr},
         contentType: "application/json",
         success: function (data) {
        	 if(data=="<$expire$>")
        		{
        		location.href ="${pageContext.request.contextPath}/inbox";
        			}
        	 var arr=data.split("$");
           var msg="";
           document.getElementById("hid_pagi_allmail").value=arr[1];
           var all=parseInt(arr[1]);
          
         
			if(all>0)
       	   {
			var start='0';    //''+sml;
			var end=parseInt($("#hid_mail_list_limit").val());
			var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
			var pview=document.getElementById("hid_previewPane").value;
			if(pcnt==1)
				{
				
	        	if(end>all)
	        		{
	        		end =all;
	        		}
	        	end=end-1;
	        	$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : pfldr,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						window.prevflg="true";
						window.nextflg="true";
						start++;
						end++;
						msg=start+" - "+end +" of "+all;
						$("#unread_inbox").html("("+cnt+")");
						  $("#pagination_div").html(msg);
						  msg=msg.replace(/&nbsp;/g , " ");
				           $("#pagination_div").attr('title', msg);
						
						$("#inb_cnt_div").html(data);
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						//document.getElementById('action_gif').style.display= 'none';
						//notifyMe(fid, sub)
						
						try
						{
						if(hid_dnoti=="New mail notifications on")
							{
							if (!window.Notification) {
								  //  alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  
								    
								  }
							}
						}
						catch (e) {
							// TODO: handle exception
						}
						
					}
				});
				}
			else
				{
				
	        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	        	pcnt--;
	        	start=pcnt*cntlmt;
	        	end=start+cntlmt;
	        	if(end>all)
	        		{
	        		end =all;
	        		}
	        	end--;
	        	$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : pfldr,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						window.prevflg="true";
						window.nextflg="true";
						start++;
						end++;
						msg=start+" - "+end +" of "+all;
						$("#unread_inbox").html("("+cnt+")");
						  $("#pagination_div").html(msg);
						  msg=msg.replace(/&nbsp;/g , " ");
				           $("#pagination_div").attr('title', msg);
						
						$("#inb_cnt_div").html(data);
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						//document.getElementById('action_gif').style.display= 'none';
						//notifyMe(fid, sub)
						try
						{
							if(hid_dnoti=="New mail notifications on")
							{
							if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
					}
				});
				}
			
       	   }
         
         
         
         }
     });
					
					
				}
				else
					{
					$("#unread_inbox").html("("+cnt+")");
					//notifyMe(fid, sub)
					try
						{
						if(hid_dnoti=="New mail notifications on")
						{
						
						if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
					}		
				}
			else
				{
				$("#unread_inbox").html("("+cnt+")");
				//notifyMe(fid, sub)
				try
						{
					if(hid_dnoti=="New mail notifications on")
					{		 
					if (!window.Notification) {
								//    alert('Desktop notifications not available in your browser.'); 
								    return;
								  }

								  if (window.Notification.permission !== "granted")
									  window.Notification.requestPermission();
								  else {
								    var notification = new Notification('New mail Notification', {
								     	icon: 'images/logo_login.png',
								    	body: "Form: "+fid+"\nSubject: "+sub,
								    });

								  }
								    
								  }
						}
						catch (e) {
							// TODO: handle exception
						}
				}
			
			
			
			
			
			
			
		}
			
			
		
	
	});
	}

	function getWebmailInbox( fdrname)
	{
		if($('#div_for_compose').css('display')=='block')
		{
			backFromComposeNew();
		}
		 else if($('#div_for_setting').css('display')=='block')
			{
			 document.getElementById('action_gif').style.display= 'block';
			 location.href ="${pageContext.request.contextPath}/inbox";
			} 
		else
			{
			
			if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			}
			
			if(fdrname=="Junk" || fdrname=="junk")
				{
				$('#li_spam').prop('title', 'Not Spam');
				$("#img_spam").attr("src", "images/safe.png")
				}
			else
				{
				$('#li_spam').prop('title', 'Report Spam');
				$("#img_spam").attr("src", "images/restriction.png")
				}
			
	document.getElementById('div_for_setting').style.display='none';
	noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
	//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
	$('#hid_open_search').val("false");
	document.getElementById("hid_dt_sorting").value="up";
	document.getElementById("hid_pagi_pcnt").value='1';
	document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
	var pfldr=document.getElementById('hid_active_fldr').value
	document.getElementById('hid_active_fldr').value=fdrname;
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
    document.getElementById('hid_pagi_search_allmail').value="";
    document.getElementById('hid_pagi_search_pcnt').value="";
    document.getElementById('hid_pagi_search_type').value="";
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	
	var start='0';
	var end=$("#hid_mail_list_limit").val();
	document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
						}
						else
							{
						window.prevflg="true";
						window.nextflg="true";
						
						if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							}
						$("#inb_cnt_div").html(data);
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						document.getElementById('action_gif').style.display= 'none';
						getAllMailCount(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
					}}
				});

	}
	
	}
	
	function getWebmailInboxDesc( )
	{
		
		var fdrname=document.getElementById('hid_active_fldr').value;
		//alert("down"+fdrname);
		document.getElementById("hid_pagi_pcnt").value='1';
		var start='0';
		var end=$("#hid_mail_list_limit").val();
		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInboxDesc",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							}
						$("#inb_cnt_div").html(data);
						document.getElementById('action_gif').style.display= 'none';
						getAllMailCount(fdrname);
					}
				});

	}
	
	
	function getAllMailCount(folderPath){
		//alert("meeeeeeeeeeeeeeeeeeeSub="+folderPath);
		 $.ajax({
	         type: "GET",
	         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
	         data: {'path':folderPath},
	         contentType: "application/json",
	         success: function (data) {
	        	 if(data=="<$expire$>")
	        		{
	        		location.href ="${pageContext.request.contextPath}/inbox";
	        			}
	        	 var arr=data.split("$");
	            $("#pagination_div").html(arr[0]);
	            arr[0]=arr[0].replace(/&nbsp;/g , " ");
	            $("#pagination_div").attr('title', arr[0]);
	           document.getElementById("hid_pagi_allmail").value=arr[1];
	         }
	     });
		
	}
	
	
	
	function refreshInbox() {
		
		var fdrname=document.getElementById('hid_active_fldr').value;
	//	getWebmailInbox(fdrname);
		
	
		if($('#div_for_compose').css('display')=='block')
		{
			backFromComposeNew();
		}
		 else if($('#div_for_setting').css('display')=='block')
			{
			 document.getElementById('action_gif').style.display= 'block';
			 location.href ="${pageContext.request.contextPath}/inbox";
			} 
		else
			{
			
			if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			}
			
	document.getElementById('div_for_setting').style.display='none';
	noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
		//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
		//document.getElementById("hid_dt_sorting").value="up";
		//document.getElementById("hid_pagi_pcnt").value='1';
		//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//	var pfldr=document.getElementById('hid_active_fldr').value
//	document.getElementById('hid_active_fldr').value=fdrname;
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
    document.getElementById('hid_pagi_search_allmail').value="";
    document.getElementById('hid_pagi_search_pcnt').value="";
    document.getElementById('hid_pagi_search_type').value="";
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	
	
	
	
	
	
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	pcnt=pcnt-1
	var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all>=allml)
		{
		pcnt=pcnt-1
		var sml=pcnt*cntlmt;
		var all=pcnt*cntlmt;
		}
	  document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
	var start=''+sml;
	var end=$("#hid_mail_list_limit").val();
	

		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
						else
							{
						
						window.prevflg="true";
						window.nextflg="true";
						if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							}
						$("#inb_cnt_div").html(data);
						
						$("#fldr_"+fdrname).addClass('active_left_tree');
						$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val());
						
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						document.getElementById('action_gif').style.display= 'none';
						//getAllMailCount(fdrname);
						getAllMailCountCurrent(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
					}}
				});

	} 
	}
	
	function getWebmailInboxRefresh() {
		//	alert(fdrname);
		window.prevflg="true";
		window.nextflg="true";
		var fdrname=document.getElementById('hid_active_fldr').value;
		//alert(fdrname)
		var pview=document.getElementById("hid_previewPane").value;
		try
		{
		if(fdrname!=null && fdrname!="" && fdrname!="inbox" && fdrname!="INBOX")
			{
			var fnm=fdrname.replace(/ /g, '_');
			$('#fldr_INBOX').removeClass('active_left_tree');
			$('#fldr_INBOX').css('border-left-color','#fff');
			$('#fldr_'+fnm).addClass('active_left_tree');
			$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val());
			}
			
		}
		catch (err) {
			// TODO: handle exception
		}
		//alert(pview);
		/* if($("#hid_previewPane").val()=="Vertical view")
		{
		shiftViewLeft();
		}
	else
		{
		toggleViewPanel();
		} */
		
		if(fdrname=="Junk" || fdrname=="junk")
		{
		$('#li_spam').prop('title', 'Not Spam');
		$("#img_spam").attr("src", "images/safe.png")
		}
	else
		{
		$('#li_spam').prop('title', 'Report Spam');
		$("#img_spam").attr("src", "images/restriction.png")
		}
		
		
	var start='0';
	var end=$("#hid_mail_list_limit").val();

	
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
	document.getElementById('div_progress').style.display= 'block';
	document.getElementById('action_gif').style.display= 'block';
			$.ajax({
						type : "GET",
						url : "${pageContext.request.contextPath}/getMailInbox",
						data : {
							'folder' : fdrname,
							'start' : start,
							'end' : end,
							'pview' : pview
						},
						contentType : "application/json",
						success : function(data) {
							// $("#fileSystem").html(data);
							//alert(data);
							//var fdrname=document.getElementById('hid_active_fldr').value;
							if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							}
							$("#inb_cnt_div").html(data);
							$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
			            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
			            	 $(".draft_img").css("color",$("#hid_mail_bgColor").val());
			            	 $('.row_content').hover(
			         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
			          				 function(){ $(this).css('border-left', "1px solid #fff") 
			         				 }
			   					);
							//document.getElementById(fdrname).className = "active_mailbox";
							document.getElementById('action_gif').style.display= 'none';
							window.myinbox="true";
							if(window.myhead=="true")
								{
								document.getElementById('div_progress').style.display= 'none';
								}
							

							getUnreadMailCountInbox();
							
							
							//setInterval(function(){autoWebmailInboxRefresh()}, 60000);	
						}
					});

		}
	
	
	function flagActionDisp(id) {
		//alert(id);
		//alert(fclas)
		var fclas=$("#hid_mail_disp_flg").val();
	//	alert(fclas)
		document.getElementById('action_gif').style.display= 'block';
		
		//alert('hello');
		var flg_id = "div_flag_" + id;
		var left_flg_id = "left_div_flag_" + id;
		var disp_flg_id = "flag_div_disp_" + id;
		var fdrname=document.getElementById('hid_active_fldr').value;
		var type = 'set';
		var chk_nm="stared";
		if (fclas == "true") 
		{
			type = 'remove';
			chk_nm="unstared";
		}
		
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/webmailFlagAtion",
			data : {
				'folder' : fdrname,
				'flagtp' : type,
				'uid' : id
			},
			contentType : "application/json",			
			success : function(data) {
				if(data=="<$expire$>")
				{
				location.href ="${pageContext.request.contextPath}/inbox";
					}

				if (fclas == "true") {
					document.getElementById(flg_id).className = 'small_image';
					document.getElementById(disp_flg_id).className = 'bottom_flag';
					document.getElementById(left_flg_id).className = 'new_flag';
					$(".small_image").css("color","#c8c8c8");
					$(".new_flag").css("color","#c8c8c8");
					$(".bottom_flag").css("color","#c8c8c8");
					$("#hid_mail_disp_flg").val("false");
					//$("#"+left_flg_id ).html("<img src='images/star_gray.png' />");
				} else {
					$("#hid_mail_disp_flg").val("true");
					document.getElementById(flg_id).className = 'small_image_flag';
					document.getElementById(disp_flg_id).className = 'bottom_flag_red';
					document.getElementById(left_flg_id).className = 'new_flag_color';
					//$("#"+left_flg_id ).html("<img src='images/star-flag.png' />");
					$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		        	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		        	$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
		        	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
				}
				document.getElementById('action_gif').style.display= 'none';
				
				try
				{
					var nm=$('#chk_id_'+id).attr('name');
					var nm_arr=nm.split('-');
					$('#chk_id_'+id).attr('name',nm_arr[0]+"-"+chk_nm);
				}
				catch (e) {
					// TODO: handle exception
				}
			}
		}); 
		
	}

	
	
	
	function flagAction(id) {
		//alert('hii');
		document.getElementById('action_gif').style.display= 'block';
		
		//alert('hello');
		var flg_id = "div_flag_" + id;
		var left_flg_id = "left_div_flag_" + id;
		var disp_flg_id = "flag_div_disp_" + id;
		//var fdrname = 'inbox';
		var fdrname=document.getElementById('hid_active_fldr').value;
		var type = 'set';
		var chk_nm='stared'
		var y = document.getElementById(flg_id).className;
		if (y == 'small_image_flag') 
		{
			type = 'remove';
			chk_nm='unstared'
		}
		
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/webmailFlagAtion",
			data : {
				'folder' : fdrname,
				'flagtp' : type,
				'uid' : id
			},
			contentType : "application/json",			
			success : function(data) {
				if(data=="<$expire$>")
				{
				location.href ="${pageContext.request.contextPath}/inbox";
					}

				document.getElementById('action_gif').style.display= 'none';
			
				
							if (y == 'small_image_flag')
							{
							document.getElementById(flg_id).className ='small_image';
							document.getElementById(left_flg_id).className ='new_flag';
							 $(".small_image").css("color","#c8c8c8"); 
							$(".new_flag").css("color","#c8c8c8");
							//$("#"+left_flg_id ).html("<img src='images/star_gray.png' />");
							try {
									document.getElementById(disp_flg_id).className = 'bottom_flag';
									$(".bottom_flag").css("color","#c8c8c8");
									}
									catch(err) {
    
									}
								
						   } 
						else 
							{
							document.getElementById(flg_id).className = 'small_image_flag';
							document.getElementById(left_flg_id).className = 'new_flag_color';
							$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
				        	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
				        	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
							//$("#"+left_flg_id ).html("<img src='images/star-flag.png' />");
							try {
									document.getElementById(disp_flg_id).className = 'bottom_flag_red';
									$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
									}
									catch(err) {
    								
									}
							}
							
							try
							{
								var nm=$('#chk_id_'+id).attr('name');
								var nm_arr=nm.split('-');
								$('#chk_id_'+id).attr('name',nm_arr[0]+"-"+chk_nm);
							}
							catch (e) {
								// TODO: handle exception
							}		
							
			}
		});
		
	}

	
	
	
	 $(document.body).on('click', '.row_content' ,function(event){
	//	alert(this.id);
		var id=this.id;
		if(id!=null && id!="")
			{
			var arr=id.split("_");
			if(arr[1]!=null)
				{
				getMailCnt(arr[1]);
				}
			} 
		event.stopPropagation();
		});
	
	
	 
	
	$(document.body).on('click', '.npflag_mail' ,function(event){
		//alert(this.id);
		 var id=this.id;
		if(id!=null && id!="")
			{
			var arr=id.split("_");
			//alert(arr[arr.length-1]);
		 if(arr[arr.length-1]!=null)
				{
				flagAction(arr[arr.length-1]);
				} 
			} 
		event.stopPropagation();
		
		
		});
	
 	$(document.body).on('click', '.mail_checked' ,function(event){
		//alert(this.id);
	
		selMailCountInPanel();
		
		//event.stopPropagation();
		
		
		}); 
	
	//$('.row_delete').click(function(event){
		$(document.body).on('click', '.row_delete' ,function(event){
		//alert(this.id);
		 var id=this.id;
		if(id!=null && id!="")
			{
			var arr=id.split("_");
			if(arr[1]!=null)
				{
				moveTrash(arr[1]);
				}
			}
		event.stopPropagation();
		
		
		});
	
	function moveTrash(id) {
		//alert(id);
		//var msg='Are you sure you want to delete this mail?';
		var fdrname = document.getElementById('hid_active_fldr').value;
		if(fdrname=="Trash" || fdrname=="trash")
			{
			var msg="Are you sure you want to delete this mail permanently?";
			 $('.web_dialog_overlay').show(); 
			 mail_del_conf('confirm',msg,id,true);
			
			}
		else
			{
			mailDelete(id);
			}
		
		
	}
	
	
	function mailDelete(id)
	{
		 $("#action_gif").css("display","block");
         var fdrname = document.getElementById('hid_active_fldr').value;
 		$.ajax({
 					type : "GET",
 					url : "${pageContext.request.contextPath}/webmailMoveToTrash",
 					data : {
 						'folder' : fdrname,
 						'uid' : id
 					},
 					contentType : "application/json",
 					success : function(data) {
 						/* var elem = document.getElementById("div_" + id);
 						elem.parentNode.removeChild(elem); */
 						if(data=="<$expire$>")
 						{
 						location.href ="${pageContext.request.contextPath}/inbox";
 							}
 						if(data=="true")
 							{
 						try
 						{
 							var arrd=id.split("-");
 							var msg="";
 							var delcnt=arrd.length;
 	 						if(arrd.length==1)
 	 							{
 	 							 msg="Message successfully deleted.";
 	 							}
 	 						else
 	 							{
 	 							 msg="Messages successfully deleted.";
 	 							}
 	 						}
 	 						catch (e) {
 								// TODO: handle exception
 							}
 						/* var arr=id.split("-");
 						for(i=0;i<arr.length; i++)
 							{
 							var elem = document.getElementById("div_" + arr[i]);
 							elem.parentNode.removeChild(elem);
 							} */
 						//document.getElementById('action_gif').style.display = "none";
 						/* $('.tag_main').css('display','none');
 						$('.folder_view').css('display','none');
 						$('#div_search_tool').css('display','none'); */

 				
 						
 						
						if($("#hid_open_search").val()!="true")
						{
    					 $.ajax({
    				         type: "GET",
    				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
    				         data: {'path':fdrname},
    				         contentType: "application/json",
    				         success: function (data) {
    				        	 if(data=="<$expire$>")
    				        		{
    				        		location.href ="${pageContext.request.contextPath}/inbox";
    				        			}
    				        	 var arr=data.split("$");
    				           
    				           document.getElementById("hid_pagi_allmail").value=arr[1];
    				       // refreshInbox(); refresh inbox here
    				       
    				       
    				       
    				       
		
		var fdrname=document.getElementById('hid_active_fldr').value;
	//	getWebmailInbox(fdrname);
		
	
		if($('#div_for_compose').css('display')=='block')
		{
			backFromComposeNew();
		}
		 else if($('#div_for_setting').css('display')=='block')
			{
			 document.getElementById('action_gif').style.display= 'block';
			 location.href ="${pageContext.request.contextPath}/inbox";
			} 
		else
			{
			
			if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			}
			
	document.getElementById('div_for_setting').style.display='none';
	//noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
		//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
		//document.getElementById("hid_dt_sorting").value="up";
		//document.getElementById("hid_pagi_pcnt").value='1';
		//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//	var pfldr=document.getElementById('hid_active_fldr').value
//	document.getElementById('hid_active_fldr').value=fdrname;
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
    document.getElementById('hid_pagi_search_allmail').value="";
    document.getElementById('hid_pagi_search_pcnt').value="";
    document.getElementById('hid_pagi_search_type').value="";
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	
	
	
	
	
	
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	pcnt=pcnt-1
	var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all>=allml)
		{
		pcnt=pcnt-1
		var sml=pcnt*cntlmt;
		var all=pcnt*cntlmt;
		}
	 var sno= sml+cntlmt-delcnt;
	document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
	var start=''+sno;
	var end=delcnt;
	

		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
						else
							{
							$('.tag_main').css('display','none');
	 						$('.folder_view').css('display','none');
	 						$('#div_search_tool').css('display','none');
							noneMail();
						window.prevflg="true";
						window.nextflg="true";
						/* if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							} */
							var arr=id.split("-");
	 						for(i=0;i<arr.length; i++)
	 							{
	 							var elem = document.getElementById("div_" + arr[i]);
	 							elem.parentNode.removeChild(elem);
	 							}
							if(data.indexOf("<div class='inbox_empty' >No messages found in")==0)
								{
								var charr=$( "#inb_cnt_div" ).children();
								if(!charr.length)
									{
									$("#inb_cnt_div").append(data);
									}
								else if(charr.length==0)
									{
									$("#inb_cnt_div").append(data);
									}
									
								
								}
							else
								{
								$("#inb_cnt_div").append(data);
								}
	 						
													
						/* $("#fldr_"+fdrname).addClass('active_left_tree');
						$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val());
						 */
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						document.getElementById('action_gif').style.display= 'none';
						//getAllMailCount(fdrname);
						getAllMailCountCurrent(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
						if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
	   					{
	   						getDraftMailCount();
	   					//getUnreadMailCountInbox()
	   					}
						
						
						 $("#action_gif").css("display","none");
	 						var success = generate_in('alert');
	    					 $.noty.setText(success.options.id, msg);
	    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
					}}
				});

	} 
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    	   					/* getAllMailCountCurrent(fdrname)
    	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
    	   					{
    	   					inboxUnread()
    	   					//getUnreadMailCountInbox()
    	   					} 
    	   					if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
    	   					{
    	   						getDraftMailCount();
    	   					//getUnreadMailCountInbox()
    	   					}  */
    				         }
    				     });
						}
						else
							{
							 var typ= document.getElementById('hid_pagi_search_type').value;
							 var pfldr=document.getElementById('hid_active_fldr').value;
							 
							 
							 if(typ=="quick")
								{
								quick_val=document.getElementById('hid_quick_search').value;
							$.ajax({
								type : "GET",
								url : "${pageContext.request.contextPath}/getAllMailCountSearchQck",
								data : {
									'quick_val':quick_val, 'fldrnm': pfldr
								},
								contentType : "application/json",
								success : function(data) {
									if(data=="<$expire$>")
									{
									location.href ="${pageContext.request.contextPath}/inbox";
										}
									document.getElementById('hid_pagi_search_allmail').value=data;
									
									
									 
									   
										var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
										var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
										var sch_lmt1=$("#hid_mail_list_limit").val();
										var sch_lmt=25;
										if(sch_lmt1!=null && sch_lmt1!="")
											{
											sch_lmt=parseInt(sch_lmt1);
											}
										  pcnt=pcnt-1;
										 var sml=pcnt*sch_lmt;
										var all=pcnt*sch_lmt;
										if(all>=allml && allml!=0)
											{
											pcnt=pcnt-1;
											 var sml=pcnt*sch_lmt;
											var all=pcnt*sch_lmt;
											}
										var s=pcnt*sch_lmt+1;
										var e=sch_lmt;
											if(e>allml)
												{
												e=allml;
												}
											 if(allml==0)
												 {
												 document.getElementById("pagination_div").innerHTML='Search is empty';
												 $("#pagination_div").attr('title', 'Search is empty');
												 }
											 else
												 {
												 document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
												 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
												 }
											 
											document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
											 var sno= sml+sch_lmt-delcnt;
											 var start=''+sno;
											 var end=delcnt;
										
										var pview=document.getElementById("hid_previewPane").value;
										
										
											quick_val=document.getElementById('hid_quick_search').value;
										$.ajax({
														type : "GET",
														url : "${pageContext.request.contextPath}/quickSearchMail",
														data : {
															'quick_val':quick_val, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
														},
														contentType : "application/json",
														success : function(data) {
															// $("#fileSystem").html(data);
															// alert(data);
															if(data=="<$expire$>")
															{
															location.href ="${pageContext.request.contextPath}/inbox";
																}
															var arr=data.split("<$nps$>");
														     var res="";
														        if(arr.length>1)
														        	{
														        	res=arr[1];
														        	}
														        $('.tag_main').css('display','none');
										 						$('.folder_view').css('display','none');
										 						$('#div_search_tool').css('display','none');
																noneMail();
														        
																var arr=id.split("-");
										 						for(i=0;i<arr.length; i++)
										 							{
										 							var elem = document.getElementById("div_" + arr[i]);
										 							elem.parentNode.removeChild(elem);
										 							}
										 						
										 						if(res.indexOf("<div class='inbox_empty' >No messages found in")==0)
																{
																var charr=$( "#inb_cnt_div" ).children();
																if(!charr.length)
																	{
																	$("#inb_cnt_div").append(res);
																	}
																else if(charr.length==0)
																	{
																	$("#inb_cnt_div").append(res);
																	}
																	
																
																}
															else
																{
																$("#inb_cnt_div").append(res);
																}
															
																
															$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
													    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
													    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
													    	$('.row_content').hover(
											         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
											          				 function(){ $(this).css('border-left', "1px solid #fff") 
											         				 }
											   					);
													    	 $("#action_gif").css("display","none");
										 						var success = generate_in('alert');
										    					 $.noty.setText(success.options.id, msg);
										    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
															//getAllMailCount(fdrname);
														}
													});
									
								}
							});
							
								}
							 else if(typ=="adv")
								{
									to=document.getElementById('hid_to_search').value;
									from=document.getElementById('hid_from_search').value;
									sub=document.getElementById('hid_sub_search').value;
									con=document.getElementById('hid_con_search').value;
									dt1=document.getElementById('hid_date1_search').value;
									dt2=document.getElementById('hid_date2_search').value;
									tagnm=document.getElementById('hid_tag_search').value;
									stnm=document.getElementById('hid_status_search').value;
									$.ajax({
													type : "GET",
													url : "${pageContext.request.contextPath}/getAllMailCountSearchAdv",
													data : {
														'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2, 'tagnm': tagnm,  'stnm': stnm, 'con':con,  'fldrnm': pfldr
													},
													contentType : "application/json",
													success : function(data) {
														if(data=="<$expire$>")
														{
														location.href ="${pageContext.request.contextPath}/inbox";
															}
														document.getElementById('hid_pagi_search_allmail').value=data;
														
														var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
														var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
														var sch_lmt1=$("#hid_mail_list_limit").val();
														var sch_lmt=25;
														if(sch_lmt1!=null && sch_lmt1!="")
															{
															sch_lmt=parseInt(sch_lmt1);
															}
														  pcnt=pcnt-1;
														 var sml=pcnt*sch_lmt;
														var all=pcnt*sch_lmt;
														if(all>=allml && allml!=0)
															{
															pcnt=pcnt-1;
															var sml=pcnt*sch_lmt;
															var all=pcnt*sch_lmt;
															}
														var s=pcnt*sch_lmt+1;
														var e=sch_lmt;
															if(e>allml)
																{
																e=allml;
																}
															if(allml==0)
															 {
															 document.getElementById("pagination_div").innerHTML='Search is empty';
															 $("#pagination_div").attr('title', 'Search is empty');
															 }
														 else
															 {
															document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
															 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
															 }
															document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
															 var sno= sml+sch_lmt-delcnt;
															 var start=''+sno;
															 var end=delcnt;
														
														var pview=document.getElementById("hid_previewPane").value;
														
														$.ajax({
															type : "GET",
															url : "${pageContext.request.contextPath}/advSearchMail",
															data : {
																'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2,'tagnm': tagnm, 'stnm': stnm, 'con':con, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
															},
															contentType : "application/json",
															success : function(data) {
																if(data=="<$expire$>")
																{
																location.href ="${pageContext.request.contextPath}/inbox";
																	}
																var arr=data.split("<$nps$>");
															     var res="";
															        if(arr.length>1)
															        	{
															        	res=arr[1];
															        	}
															        $('.tag_main').css('display','none');
											 						$('.folder_view').css('display','none');
											 						$('#div_search_tool').css('display','none');
																	noneMail();
															        
																	var arr=id.split("-");
											 						for(i=0;i<arr.length; i++)
											 							{
											 							var elem = document.getElementById("div_" + arr[i]);
											 							elem.parentNode.removeChild(elem);
											 							}
											 						if(res.indexOf("<div class='inbox_empty' >No messages found in")==0)
																	{
																	var charr=$( "#inb_cnt_div" ).children();
																	if(!charr.length)
																		{
																		$("#inb_cnt_div").append(res);
																		}
																	else if(charr.length==0)
																		{
																		$("#inb_cnt_div").append(res);
																		}
																		
																	
																	}
																else
																	{
																	$("#inb_cnt_div").append(res);
																	}
																	
																$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
														    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
														    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
														    	$('.row_content').hover(
												         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
												          				 function(){ $(this).css('border-left', "1px solid #fff") 
												         				 }
												   					);
														    	 $("#action_gif").css("display","none");
											 						var success = generate_in('alert');
											    					 $.noty.setText(success.options.id, msg);
											    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
															}
														});
													}
												});
										}
							
							
							
							
	 						
	 						
							}
						
    					 
 							}	
 					}
 				});
	}
	
function mailDeleteFV(id)
	{
		 $("#action_gif").css("display","block");
        
         var uid=id;
			var uidstatus="next";
			var fdrname = document.getElementById('hid_active_fldr').value;
			var pview=document.getElementById("hid_previewPane").value;
			document.getElementById('action_gif').style.display= 'block';
			/* document.getElementById('div_search_tool').style.display = "block";
			
			document.getElementById("div_hid_opt1").className="hidden_option";
			document.getElementById("div_hid_opt2").className="hidden_option"; */
			
			
				var ur_scc="row_left";
				var search_st=$("#hid_open_search").val();
				
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailContentFullPageByUid",
					data : {
						'folder' : fdrname,
						'uid' : uid,
						'uidstatus':uidstatus,
						'search_st':search_st
					},
					/*  contentType : "application/json", */
					contentType : 'application/json; charset=UTF-8',
					success : function(data) {
						var obj = jQuery.parseJSON(data);
					var nextst=true;
					if(obj.content=="<nps>")
						nextst=false;
			
 		$.ajax({
 					type : "GET",
 					url : "${pageContext.request.contextPath}/webmailMoveToTrash",
 					data : {
 						'folder' : fdrname,
 						'uid' : id
 					},
 					contentType : "application/json",
 					success : function(data) {
 						/* var elem = document.getElementById("div_" + id);
 						elem.parentNode.removeChild(elem); */
 						if(data=="<$expire$>")
 						{
 						location.href ="${pageContext.request.contextPath}/inbox";
 							}
 						if(data=="true")
 							{
 						try
 						{
 							var arrd=id.split("-");
 							var msg="";
 							var delcnt=arrd.length;
 	 						if(arrd.length==1)
 	 							{
 	 							 msg="Message successfully deleted.";
 	 							}
 	 						else
 	 							{
 	 							 msg="Messages successfully deleted.";
 	 							}
 	 						}
 	 						catch (e) {
 								// TODO: handle exception
 							}
 						

 				
 						
 						
						
    					 $.ajax({
    				         type: "GET",
    				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
    				         data: {'path':fdrname},
    				         contentType: "application/json",
    				         success: function (data) {
    				        	 if(data=="<$expire$>")
    				        		{
    				        		location.href ="${pageContext.request.contextPath}/inbox";
    				        			}
    				        	 var arr=data.split("$");
    				           
    				           document.getElementById("hid_pagi_allmail").value=arr[1];
    				       // refreshInbox(); refresh inbox here
    				       
    				       
    				       
    				       
		
		var fdrname=document.getElementById('hid_active_fldr').value;
	//	getWebmailInbox(fdrname);
		
	
		if($('#div_for_compose').css('display')=='block')
		{
			backFromComposeNew();
		}
		 else if($('#div_for_setting').css('display')=='block')
			{
			 document.getElementById('action_gif').style.display= 'block';
			 location.href ="${pageContext.request.contextPath}/inbox";
			} 
		else
			{
			
			/* if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			} */
			
	document.getElementById('div_for_setting').style.display='none';
	//noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
		//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
		//document.getElementById("hid_dt_sorting").value="up";
		//document.getElementById("hid_pagi_pcnt").value='1';
		//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//	var pfldr=document.getElementById('hid_active_fldr').value
//	document.getElementById('hid_active_fldr').value=fdrname;
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
    document.getElementById('hid_pagi_search_allmail').value="";
    document.getElementById('hid_pagi_search_pcnt').value="";
    document.getElementById('hid_pagi_search_type').value="";
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	
	
	
	
	
	
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	pcnt=pcnt-1
	var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all>=allml)
		{
		pcnt=pcnt-1
		var sml=pcnt*cntlmt;
		var all=pcnt*cntlmt;
		}
	 var sno= sml+cntlmt-delcnt;
	document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
	var start=''+sno;
	var end=delcnt;
	

		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
						else
							{
							$('.tag_main').css('display','none');
	 						$('.folder_view').css('display','none');
	 						$('#div_search_tool').css('display','none');
							noneMail();
						window.prevflg="true";
						window.nextflg="true";
						/* if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							} */
							var arr=id.split("-");
	 						for(i=0;i<arr.length; i++)
	 							{
	 							var elem = document.getElementById("div_" + arr[i]);
	 							elem.parentNode.removeChild(elem);
	 							}
	 						if(data.indexOf("<div class='inbox_empty' >No messages found in")==0)
								{
								var charr=$( "#inb_cnt_div" ).children();
								if(!charr.length)
									{
									$("#inb_cnt_div").append(data);
									}
								else if(charr.length==0)
									{
									$("#inb_cnt_div").append(data);
									}
								
								nextst=false;
								}
							else
								{
								$("#inb_cnt_div").append(data);
								}
	 						
													
						/* $("#fldr_"+fdrname).addClass('active_left_tree');
						$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val());
						 */
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						document.getElementById('action_gif').style.display= 'none';
						//getAllMailCount(fdrname);
						getAllMailCountCurrent(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
						if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
	   					{
	   						getDraftMailCount();
	   					//getUnreadMailCountInbox()
	   					}
						
						
						 $("#action_gif").css("display","none");
	 						var success = generate_in('alert');
	    					 $.noty.setText(success.options.id, msg);
	    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
	    					 if(obj.success=="false" && obj.content =="<$expire$>")
			   					{
			   						location.href ="${pageContext.request.contextPath}/inbox";
			   					}
			   					else if(obj.success=="false" && obj.content=="<nps>")
			   					{
			   						backToMailList();
			   						$("#div_full_pg_disp").html("");
			   					document.getElementById('action_gif').style.display= 'none';
			   					}
			   					else if(!nextst)
			   						{
			   						backToMailList();
			   						$("#div_full_pg_disp").html("");
			   						document.getElementById('action_gif').style.display= 'none';
			   						}
			   					else
			   						{
			   					
			   						data=obj.content;
			   					data = data.replace(/\.mail_content/g, '.mail_content_np');
			   					document.getElementById('div_half_pg_disp').style.display= 'none';
			   					document.getElementById('div_full_pg_disp').style.display= 'block';
			   					document.getElementById('action_gif').style.display= 'none';
			   					$("#div_full_pg_disp").html(data);
			   					$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
			   					$('.mail_content').css('height',left_scollx-129);
			   				//	document.getElementById("div_unread_"+uid).className ="row_left";
			   					$(".mail_content_1 a").attr("target","_blank");
			   					$(".attachment_option a").removeAttr("target");
			   					$(".attachment_file a").removeAttr("target");
			   				
			   				//	var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
			   				var inline=parseInt($('#hid_inline_sz').val());
			   					if(inline>0)
			   						{
			   						
			   						 var i=1;
			   						 $('.mail_content_1 img').each(function(){
			   							 var str = $(this).attr('src');
			   						
			   							  if ( str.startsWith("cid:"))
			   					    	   {
			   								str=str.replace("cid:","");
			   								str = str.replace(/@/g, '_');
			   								  str = str.replace(/\./g, '_');
			   								$(this).attr('src',$('#'+str).val());
			   					   		  
			   					    	   } 
			   							
			   							 });
			   						
			   						
			   					
			   						}
			   					 
			   					 
			   					 
			   					 
			   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
			   					{
			   					inboxUnread()
			   					}
			   					try
			   					{
			   					var nm=$('#chk_id_'+uid).attr('name');
			   					var nm_arr=nm.split('-');
			   					$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
			   				}
			   				catch (e) {
			   					// TODO: handle exception
			   				}
			   				
			   				

			   				var rulesForCssText = function (styleContent) { 
			   				var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
			   				styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
			   				return styleElement.sheet.cssRules;
			   				};
			   				$('.mail_content_1 style').each(function(){
			   					var modfieddCss = '';
			   					var currentCss =  rulesForCssText($(this).html());
			   					
			   					$(this).html('');
			   					for(var i =0; i< currentCss.length;i++)
			   					{
			   						if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
			   						{
			   							var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
			   							modfieddCss+= media;
			   							}
			   						else {
			   							modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
			   							} 
			   						}$(this).html(modfieddCss);}); 
			   				
			   				try
			   				{
			   					//document.getElementById("div_"+uid).className="row_content pading_main";
			   					var nwuid=obj.uid;
			   					$("#hid_mail_disp_count").val(nwuid);
			   					document.getElementById("div_"+nwuid).className="row_content selected_row pading_main";
			   					var msgno=obj.msgno;
			   					if(msgno!=null && msgno!="")
			   						{
			   						var mgno=parseInt(msgno);
			   						if(mgno-1==0)
			   							{
			   							$(".prev_"+uid).attr("name", "no");
			   							$(".prev_"+uid+" > div").css("border-color", "#e4e4e4");
			   							$(".prev_"+uid+" > div > img").css("opacity", "0.5");
			   							}
			   						var pcntt=obj.allmsgno;
			   						if(pcntt!="")
			   							{
			   							var noall=parseInt(pcntt.trim());
			   							if(mgno+1>noall)
			   								{
			   								
			   								$(".next_"+uid).attr("name", "no");
			   								$(".next_"+uid+" > div").css("border-color", "#e4e4e4");
			   								$(".next_"+uid+" > div > img").css("opacity", "0.5");
			   								}
			   							}
			   						}
			   				}
			   				catch (e) {
			   					// TODO: handle exception
			   				}
			   						}
					}}
				});

	} 
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    				       
    	   					/* getAllMailCountCurrent(fdrname)
    	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
    	   					{
    	   					inboxUnread()
    	   					//getUnreadMailCountInbox()
    	   					} 
    	   					if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
    	   					{
    	   						getDraftMailCount();
    	   					//getUnreadMailCountInbox()
    	   					}  */
    				         }
    				     });
						
					
						
    					 
 							}	
 					}
 				});
	}
				});
				}
	function mail_del_conf(type,msg,id,st) {
	   	//alert(id);
	         var n = noty({
	           text        : msg,
	           type        : type,
	           theme       : 'relax',
	           dismissQueue: false,
	           layout      : 'center',
	           theme       : 'defaultTheme',
	           buttons     : (type != 'confirm') ? false : [
	               {addClass: 'btn btn-primary', text: 'Yes', onClick: function ($noty) {
	   				
	                 $noty.close();
	               
	                 $('.web_dialog_overlay').hide(); 
	                 if(st)
	                	 {
		                 mailDelete(id);
	                	 }
	                 else
	                	 {
	                	 mailDeleteFV(id);
	                	 }
	                 
	                
	               }
	               },
	               {addClass: 'btn btn-danger', text: 'No', onClick: function ($noty) {
	                   $noty.close();
	                   $('.web_dialog_overlay').hide(); 
	               
	               }
	               }
	           ]
	       });
	      
	           
	           //console.log(type + ' - ' + n.options.id);
	           return n; 
	            
	       }
	
	$(document).ready(function(){ 		 
    $('#hid_del_email').change( function() {  
 	   //alert($("#hid_del").attr("data-id")); 
 	var r =$('#hid_del_email').val();
 	var id=$("#hid_del_email").attr("data-mailuid");
 	
 //	alert("change r="+r);
// 	alert("change fldnm="+fldnm);
 	if (r == "true") {
		
 		
document.getElementById('action_gif').style.display= 'block';
		
		var fdrname = document.getElementById('hid_active_fldr').value;
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/webmailMoveToTrash",
					data : {
						'folder' : fdrname,
						'uid' : id
					},
					contentType : "application/json",
					success : function(data) {
						/* var elem = document.getElementById("div_" + id);
						elem.parentNode.removeChild(elem); */
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
							}
						
						var arr=id.split("-");
						for(i=0;i<arr.length; i++)
							{
							var elem = document.getElementById("div_" + arr[i]);
							elem.parentNode.removeChild(elem);
							}
						//document.getElementById('action_gif').style.display = "none";
						$('.tag_main').css('display','none');
						$('.folder_view').css('display','none');
						$('#div_search_tool').css('display','none');

						// $("#fileSystem").html(data);
						// alert(data);
						// $("#inb_cnt_div").html(data);
						var msg="";
						if(arr.length==1)
							{
							 msg="Message successfully deleted.";
							}
						else
							{
							 msg="Messages successfully deleted.";
							}
						var success = generate_in('alert');
   					 $.noty.setText(success.options.id, msg);
   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);


   					 $.ajax({
   				         type: "GET",
   				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
   				         data: {'path':fdrname},
   				         contentType: "application/json",
   				         success: function (data) {
   				        	if(data=="<$expire$>")
   				     		{
   				     		location.href ="${pageContext.request.contextPath}/inbox";
   				     		}
   				        	 var arr=data.split("$");
   				           
   				           document.getElementById("hid_pagi_allmail").value=arr[1];
   				        refreshInbox();
   	   					getAllMailCountCurrent(fdrname)
   	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
   	   					{
   	   					inboxUnread()
   	   					//getUnreadMailCountInbox()
   	   					} 
   	   					if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
   	   					{
   	   						getDraftMailCount();
   	   					//getUnreadMailCountInbox()
   	   					} 
   				         }
   				     });
   					 
   					 
   					
					}
				});
 		
	}
 });
	});		
	
	function generate_in(type) {
        var n = noty({
            text        : type,
            type        : type,
            dismissQueue: false,
            layout      : 'topCenter',
            theme       : 'defaultTheme'
        });
      
        return n;
    }
    
    function generate_conf(type,id,uid) {
   	 //alert(id);
         var n = noty({
           text        : type,
           type        : type,
           theme       : 'relax',
           dismissQueue: false,
           layout      : 'center',
           theme       : 'defaultTheme',
           buttons     : (type != 'confirm') ? false : [
               {addClass: 'btn btn-primary', text: 'Yes', onClick: function ($noty) {
   				
                 $noty.close();
                // alert(foldernm);
                 $("#"+id).attr("data-mailuid", uid);
                 $('#'+id).val("true").trigger('change');
                 $('.web_dialog_overlay').hide(); 
               }
               },
               {addClass: 'btn btn-danger', text: 'No', onClick: function ($noty) {
                   $noty.close();
                   $('#'+id).val("");
                   $("#"+id).attr("data-mailuid", "");
                   $('.web_dialog_overlay').hide(); 
                /*  var n1 = noty({
                       text        : 'You clicked "Cancel" button',
                       type        : 'error',
                       dismissQueue: false,
                       layout      : 'topCenter',
                       theme       : 'defaultTheme'
                   });
                  setTimeout(function () { $.noty.close(n1.options.id); }, 2000); */
               }
               }
           ]
       });
      
           
           //console.log(type + ' - ' + n.options.id);
           return n; 
            
       }


   
    
    
	
    function moveToFolderAll(folder_dest) {
		//alert(id);
		if(folder_dest=="Drafts" || folder_dest=="DRAFTS" || folder_dest=="drafts" )
			{
			var error = generate_in('error');
				 $.noty.setText(error.options.id, "Destination folder is not valid.");
				 setTimeout(function () {  $.noty.close(error.options.id); }, 5000);
			}
		else
			{
			var fdrname = document.getElementById('hid_active_fldr').value;
			if(fdrname==folder_dest)
				{
				var error = generate_in('error');
				 $.noty.setText(error.options.id, "Source and Destination folder must be different.");
				 setTimeout(function () {  $.noty.close(error.options.id); }, 5000);
				}
			else
				{
				//  if ($('.tab_first_content').css('display') == "block")
				if($('#div_full_pg_disp').css('display') == "block" && $("#hid_open_search").val()!="true")
					{
					
					var ids=getSelectdMailUid();
					if(ids==null || ids=="")
					{
						ids=$("#hid_mail_disp_count").val();
					}
					//alert(ids);
					
					document.getElementById('action_gif').style.display= 'block';
					var uid=ids;
					var uidstatus="next";
					var fdrname = document.getElementById('hid_active_fldr').value;
					var pview=document.getElementById("hid_previewPane").value;
					document.getElementById('action_gif').style.display= 'block';
					/* document.getElementById('div_search_tool').style.display = "block";
					
					document.getElementById("div_hid_opt1").className="hidden_option";
					document.getElementById("div_hid_opt2").className="hidden_option"; */
					
					
						var ur_scc="row_left";
						var search_st=$("#hid_open_search").val();
						
						$.ajax({
							type : "GET",
							url : "${pageContext.request.contextPath}/getMailContentFullPageByUid",
							data : {
								'folder' : fdrname,
								'uid' : uid,
								'uidstatus':uidstatus,
								'search_st':search_st
							},
							/*  contentType : "application/json", */
							contentType : 'application/json; charset=UTF-8',
							success : function(data) {
								var obj = jQuery.parseJSON(data);
							
								var nextst=true;
								if(obj.content=="<nps>")
									nextst=false;
					
					
					
					
					
					
					
					
					
					
					// msg="Selected mail(s) has been moved to "+folder_dest+".";
					msg="Message(s) moved successfully.";
					
					$.ajax({
								type : "GET",
								url : "${pageContext.request.contextPath}/webmailMoveToFolder",
								data : {
									'folder' : fdrname,
									'folder_dest' : folder_dest,
									'uid' : ids
								},
								contentType : "application/json",
								success : function(data) {
									if(data=="<$expire$>")
									{
									location.href ="${pageContext.request.contextPath}/inbox";
										}

									if(data!="false")
										{
										

					   					$.ajax({
					   				         type: "GET",
					   				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
					   				         data: {'path':fdrname},
					   				         contentType: "application/json",
					   				         success: function (data) {
					   				        	if(data=="<$expire$>")
					   				     	{
					   				     	location.href ="${pageContext.request.contextPath}/inbox";
					   				     		} 
					   				        	/* var arr1=ids.split("-");
					   				        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
					   				        	if(arr1.length < cntlmt)
					   				        		{
					   								for(i=0;i<arr1.length; i++)
					   								{
					   								var elem = document.getElementById("div_" + arr1[i]);
					   								elem.parentNode.removeChild(elem);
					   								}
					   				        		} */
					   							/* $('.tag_main').css('display','none');
					   							$('.folder_view').css('display','none');
					   							$('#div_search_tool').css('display','none'); */

					   							/* document.getElementById('mail_spam').style.display = "block";
					   							 setTimeout( "jQuery('#mail_spam').hide();",3000 ); */
					   							 
					   							
					   				        	 
					   				        	 
					   				        	 var arr=data.split("$");
					   				           
					   				           document.getElementById("hid_pagi_allmail").value=arr[1];
					   				       // refreshInbox(); refresh inbox here
					   				       
					   				       
						
						var fdrname=document.getElementById('hid_active_fldr').value;
					//	getWebmailInbox(fdrname);
						
					
						if($('#div_for_compose').css('display')=='block')
						{
							backFromComposeNew();
						}
						 else if($('#div_for_setting').css('display')=='block')
							{
							 document.getElementById('action_gif').style.display= 'block';
							 location.href ="${pageContext.request.contextPath}/inbox";
							} 
						else
							{
							
							/* if($('#div_full_pg_disp').css('display') == "block")	
							{
							backToMailList();
							} */
							
					document.getElementById('div_for_setting').style.display='none';
					//noneMail();
					clearCompose();
					document.getElementById('div_for_compose').style.display='none';
					var pview=document.getElementById("hid_previewPane").value;
						//alert(pview)
					document.getElementById('div_for_inbox').style.display=  'block'; 
					
						//document.getElementById("hid_dt_sorting").value="up";
						//document.getElementById("hid_pagi_pcnt").value='1';
						//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//					var pfldr=document.getElementById('hid_active_fldr').value
//					document.getElementById('hid_active_fldr').value=fdrname;
					document.getElementById('mail_pagi').style.display= 'block';
				    document.getElementById('search_pagi').style.display= 'none';
				    document.getElementById('hid_pagi_search_allmail').value="";
				    document.getElementById('hid_pagi_search_pcnt').value="";
				    document.getElementById('hid_pagi_search_type').value="";
					//document.getElementById(pfldr).className = "";
					//document.getElementById(fdrname).className = "active_mailbox";
					
					
					
					
					
					
					var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
					var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
					var cntlmt=parseInt($("#hid_mail_list_limit").val());
					
					pcnt=pcnt-1
					var sml=pcnt*cntlmt;
					var all=pcnt*cntlmt;
					if(all>=allml)
						{
						pcnt=pcnt-1
						var sml=pcnt*cntlmt;
						var all=pcnt*cntlmt;
						}
					var arr=ids.split("-");
					var delcnt=arr.length;
					var sno= sml+cntlmt-delcnt;
					document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
					var start=''+sno;
					var end=delcnt;
					

						document.getElementById('action_gif').style.display= 'block';
						$.ajax({
									type : "GET",
									url : "${pageContext.request.contextPath}/getMailInbox",
									data : {
										'folder' : fdrname,
										'start' : start,
										'end' : end,
										'pview' : pview
									},
									contentType : "application/json",
									success : function(data) {
										// $("#fileSystem").html(data);
										// alert(data);
										if(data=="<$expire$>")
								{
									location.href ="${pageContext.request.contextPath}/inbox";
								}
										else
											{
										
											$('.tag_main').css('display','none');
				   							$('.folder_view').css('display','none');
				   							$('#div_search_tool').css('display','none');
				   							noneMail();
										window.prevflg="true";
										window.nextflg="true";
										
					 						for(i=0;i<arr.length; i++)
					 							{
					 							var elem = document.getElementById("div_" + arr[i]);
					 							elem.parentNode.removeChild(elem);
					 							}
											$("#inb_cnt_div").append(data);
										
										/* $("#fldr_"+fdrname).addClass('active_left_tree');
										$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val()); */
										
										$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
						            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
						            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
						            	$('.row_content').hover(
						         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
						          				 function(){ $(this).css('border-left', "1px solid #fff") 
						         				 }
						   					);
										//document.getElementById('action_gif').style.display= 'none';
										//getAllMailCount(fdrname);
										getAllMailCountCurrent(fdrname);
										if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
										{
										inboxUnread();
										}
										if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
					   					{
					   						getDraftMailCount();
					   					//getUnreadMailCountInbox()
					   					}
										
										
										
										
										
										var success = generate_in('alert');
					   					 $.noty.setText(success.options.id, msg);
					   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
					   					 

					   					if(obj.success=="false" && obj.content =="<$expire$>")
					   					{
					   						location.href ="${pageContext.request.contextPath}/inbox";
					   					}
					   					else if(obj.success=="false" && obj.content=="<nps>")
					   					{
					   						backToMailList();
					   						$("#div_full_pg_disp").html("");
					   						document.getElementById('action_gif').style.display= 'none';

					   					}
					   					else
					   						{
					   					
					   						data=obj.content;
					   					data = data.replace(/\.mail_content/g, '.mail_content_np');
					   					document.getElementById('div_half_pg_disp').style.display= 'none';
					   					document.getElementById('div_full_pg_disp').style.display= 'block';
					   					document.getElementById('action_gif').style.display= 'none';
					   					$("#div_full_pg_disp").html(data);
					   					$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
					   					$('.mail_content').css('height',left_scollx-129);
					   				//	document.getElementById("div_unread_"+uid).className ="row_left";
					   					$(".mail_content_1 a").attr("target","_blank");
					   					$(".attachment_option a").removeAttr("target");
					   					$(".attachment_file a").removeAttr("target");
					   				
					   				//	var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
					   				var inline=parseInt($('#hid_inline_sz').val());
					   					if(inline>0)
					   						{
					   						
					   						 var i=1;
					   						 $('.mail_content_1 img').each(function(){
					   							 var str = $(this).attr('src');
					   						
					   							  if ( str.startsWith("cid:"))
					   					    	   {
					   								str=str.replace("cid:","");
					   								str = str.replace(/@/g, '_');
					   								  str = str.replace(/\./g, '_');
					   								$(this).attr('src',$('#'+str).val());
					   					   		  
					   					    	   } 
					   							
					   							 });
					   						
					   						
					   					
					   						}
					   					 
					   					 
					   					 
					   					 
					   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
					   					{
					   					inboxUnread()
					   					}
					   					try
					   					{
					   					var nm=$('#chk_id_'+uid).attr('name');
					   					var nm_arr=nm.split('-');
					   					$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
					   				}
					   				catch (e) {
					   					// TODO: handle exception
					   				}
					   				
					   				

					   				var rulesForCssText = function (styleContent) { 
					   				var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
					   				styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
					   				return styleElement.sheet.cssRules;
					   				};
					   				$('.mail_content_1 style').each(function(){
					   					var modfieddCss = '';
					   					var currentCss =  rulesForCssText($(this).html());
					   					
					   					$(this).html('');
					   					for(var i =0; i< currentCss.length;i++)
					   					{
					   						if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
					   						{
					   							var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
					   							modfieddCss+= media;
					   							}
					   						else {
					   							modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
					   							} 
					   						}$(this).html(modfieddCss);}); 
					   				
					   				try
					   				{
					   					//document.getElementById("div_"+uid).className="row_content pading_main";
					   					var nwuid=obj.uid;
					   					$("#hid_mail_disp_count").val(nwuid);
					   					document.getElementById("div_"+nwuid).className="row_content selected_row pading_main";
					   					var msgno=obj.msgno;
					   					if(msgno!=null && msgno!="")
					   						{
					   						var mgno=parseInt(msgno);
					   						if(mgno-1==0)
					   							{
					   							$(".prev_"+uid).attr("name", "no");
					   							$(".prev_"+uid+" > div").css("border-color", "#e4e4e4");
					   							$(".prev_"+uid+" > div > img").css("opacity", "0.5");
					   							}
					   						var pcntt=obj.allmsgno;
					   						if(pcntt!="")
					   							{
					   							var noall=parseInt(pcntt.trim());
					   							if(mgno+1>noall)
					   								{
					   								
					   								$(".next_"+uid).attr("name", "no");
					   								$(".next_"+uid+" > div").css("border-color", "#e4e4e4");
					   								$(".next_"+uid+" > div > img").css("opacity", "0.5");
					   								}
					   							}
					   						}
					   				}
					   				catch (e) {
					   					// TODO: handle exception
					   				}
					   						}
									}}
								});

					} 
					   				        
					   				      	         }
					   				     });
					   						
										
										
										}
									else
										{
									document.getElementById('action_gif').style.display = "none";
										}
								}
					});
					
							}
						});
					
					
					}
				else
					{
				if($('#div_full_pg_disp').css('display') == "block")	
					{
					backToMailList();
					}
				
		var ids=getSelectdMailUid();
		if(ids==null || ids=="")
		{
			ids=$("#hid_mail_disp_count").val();
		}
		//alert(ids);
		
		document.getElementById('action_gif').style.display= 'block';
		
		
		
		// msg="Selected mail(s) has been moved to "+folder_dest+".";
		msg="Message(s) moved successfully.";
		
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/webmailMoveToFolder",
					data : {
						'folder' : fdrname,
						'folder_dest' : folder_dest,
						'uid' : ids
					},
					contentType : "application/json",
					success : function(data) {
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
							}

						if(data!="false")
							{
						/* var arr=ids.split("-");
						for(i=0;i<arr.length; i++)
							{
							var elem = document.getElementById("div_" + arr[i]);
							elem.parentNode.removeChild(elem);
							}
						
						$('.tag_main').css('display','none');
						$('.folder_view').css('display','none');
						$('#div_search_tool').css('display','none');

					// document.getElementById('mail_spam').style.display = "block";
					//	 setTimeout( "jQuery('#mail_spam').hide();",3000 ); 
						 
						var success = generate_in('alert');
	   					 $.noty.setText(success.options.id, msg);
	   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000); */
	   					 
	   					if($("#hid_open_search").val()!="true")
	   						{
	   					$.ajax({
	   				         type: "GET",
	   				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
	   				         data: {'path':fdrname},
	   				         contentType: "application/json",
	   				         success: function (data) {
	   				        	if(data=="<$expire$>")
	   				     	{
	   				     	location.href ="${pageContext.request.contextPath}/inbox";
	   				     		}
	   				        	/* var arr1=ids.split("-");
	   				        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	   				        	if(arr1.length < cntlmt)
	   				        		{
	   								for(i=0;i<arr1.length; i++)
	   								{
	   								var elem = document.getElementById("div_" + arr1[i]);
	   								elem.parentNode.removeChild(elem);
	   								}
	   				        		} */
	   							/* $('.tag_main').css('display','none');
	   							$('.folder_view').css('display','none');
	   							$('#div_search_tool').css('display','none'); */

	   							/* document.getElementById('mail_spam').style.display = "block";
	   							 setTimeout( "jQuery('#mail_spam').hide();",3000 ); */
	   							 
	   							
	   				        	 
	   				        	 
	   				        	 var arr=data.split("$");
	   				           
	   				           document.getElementById("hid_pagi_allmail").value=arr[1];
	   				       // refreshInbox(); refresh inbox here
	   				       
	   				       
		
		var fdrname=document.getElementById('hid_active_fldr').value;
	//	getWebmailInbox(fdrname);
		
	
		if($('#div_for_compose').css('display')=='block')
		{
			backFromComposeNew();
		}
		 else if($('#div_for_setting').css('display')=='block')
			{
			 document.getElementById('action_gif').style.display= 'block';
			 location.href ="${pageContext.request.contextPath}/inbox";
			} 
		else
			{
			
			if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			}
			
	document.getElementById('div_for_setting').style.display='none';
	//noneMail();
	clearCompose();
	document.getElementById('div_for_compose').style.display='none';
	var pview=document.getElementById("hid_previewPane").value;
		//alert(pview)
	document.getElementById('div_for_inbox').style.display=  'block'; 
	
		//document.getElementById("hid_dt_sorting").value="up";
		//document.getElementById("hid_pagi_pcnt").value='1';
		//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//	var pfldr=document.getElementById('hid_active_fldr').value
//	document.getElementById('hid_active_fldr').value=fdrname;
	document.getElementById('mail_pagi').style.display= 'block';
    document.getElementById('search_pagi').style.display= 'none';
    document.getElementById('hid_pagi_search_allmail').value="";
    document.getElementById('hid_pagi_search_pcnt').value="";
    document.getElementById('hid_pagi_search_type').value="";
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	
	
	
	
	
	
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	
	pcnt=pcnt-1
	var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all>=allml)
		{
		pcnt=pcnt-1
		var sml=pcnt*cntlmt;
		var all=pcnt*cntlmt;
		}
	var arr=ids.split("-");
	var delcnt=arr.length;
	var sno= sml+cntlmt-delcnt;
	document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
	var start=''+sno;
	var end=delcnt;
	

		document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/getMailInbox",
					data : {
						'folder' : fdrname,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
						else
							{
						
							$('.tag_main').css('display','none');
   							$('.folder_view').css('display','none');
   							$('#div_search_tool').css('display','none');
   							noneMail();
						window.prevflg="true";
						window.nextflg="true";
						/* if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
							{
							$("#div_from").html("TO");
							}
						else
							{
							$("#div_from").html("FROM");
							} */
							//var arr=id.split("-");
	 						for(i=0;i<arr.length; i++)
	 							{
	 							var elem = document.getElementById("div_" + arr[i]);
	 							elem.parentNode.removeChild(elem);
	 							}
							$("#inb_cnt_div").append(data);
						
						/* $("#fldr_"+fdrname).addClass('active_left_tree');
						$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val()); */
						
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
		            	$('.row_content').hover(
		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		         				 }
		   					);
						document.getElementById('action_gif').style.display= 'none';
						//getAllMailCount(fdrname);
						getAllMailCountCurrent(fdrname);
						if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
						{
						inboxUnread();
						}
						if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
	   					{
	   						getDraftMailCount();
	   					//getUnreadMailCountInbox()
	   					}
						
						
						
						
						
						var success = generate_in('alert');
	   					 $.noty.setText(success.options.id, msg);
	   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
					}}
				});

	} 
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   				        
	   	   					/* getAllMailCountCurrent(fdrname)
	   	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
	   	   					{
	   	   					inboxUnread()
	   	   					//getUnreadMailCountInbox()
	   	   					} 
	   	   					if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
	   	   					{
	   	   						getDraftMailCount();
	   	   					//getUnreadMailCountInbox()
	   	   					}  */
	   	   					
	   	   				/* var success = generate_in('alert');
		   					 $.noty.setText(success.options.id, msg);
		   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000); */
	   				         }
	   				     });
	   						}
	   					else
	   						{
	   					
	   						

							 var typ= document.getElementById('hid_pagi_search_type').value;
							 var pfldr=document.getElementById('hid_active_fldr').value;
							 var arr=ids.split("-");
								var delcnt=arr.length;
							 
							 if(typ=="quick")
								{
								quick_val=document.getElementById('hid_quick_search').value;
							$.ajax({
								type : "GET",
								url : "${pageContext.request.contextPath}/getAllMailCountSearchQck",
								data : {
									'quick_val':quick_val, 'fldrnm': pfldr
								},
								contentType : "application/json",
								success : function(data) {
									if(data=="<$expire$>")
									{
									location.href ="${pageContext.request.contextPath}/inbox";
										}
									document.getElementById('hid_pagi_search_allmail').value=data;
									
									
									 
									
										var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
										var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
										var sch_lmt1=$("#hid_mail_list_limit").val();
										var sch_lmt=25;
										if(sch_lmt1!=null && sch_lmt1!="")
											{
											sch_lmt=parseInt(sch_lmt1);
											}
										  pcnt=pcnt-1;
										 var sml=pcnt*sch_lmt;
										var all=pcnt*sch_lmt;
										if(all>=allml && allml!=0)
											{
											pcnt=pcnt-1;
											 var sml=pcnt*sch_lmt;
											var all=pcnt*sch_lmt;
											}
										var s=pcnt*sch_lmt+1;
										var e=sch_lmt;
											if(e>allml)
												{
												e=allml;
												}
											
											 if(allml==0)
											 {
											  document.getElementById("pagination_div").innerHTML='Search is empty';
											 $("#pagination_div").attr('title', 'Search is empty');
											 }
											  else
											 {
											 document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
											 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
											 }
											
											
											document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
											 var sno= sml+sch_lmt-delcnt;
											 var start=''+sno;
											 var end=delcnt;
										
										var pview=document.getElementById("hid_previewPane").value;
										
										
											quick_val=document.getElementById('hid_quick_search').value;
										$.ajax({
														type : "GET",
														url : "${pageContext.request.contextPath}/quickSearchMail",
														data : {
															'quick_val':quick_val, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
														},
														contentType : "application/json",
														success : function(data) {
															// $("#fileSystem").html(data);
															// alert(data);
															if(data=="<$expire$>")
															{
															location.href ="${pageContext.request.contextPath}/inbox";
																}
															var arr=data.split("<$nps$>");
														     var res="";
														        if(arr.length>1)
														        	{
														        	res=arr[1];
														        	}
														        $('.tag_main').css('display','none');
										 						$('.folder_view').css('display','none');
										 						$('#div_search_tool').css('display','none');
																noneMail();
														        
																var arr=ids.split("-");
										 						for(i=0;i<arr.length; i++)
										 							{
										 							var elem = document.getElementById("div_" + arr[i]);
										 							elem.parentNode.removeChild(elem);
										 							}
										 						if(res.indexOf("<div class='inbox_empty' >No messages found in")==0)
																{
																var charr=$( "#inb_cnt_div" ).children();
																if(!charr.length)
																	{
																	$("#inb_cnt_div").append(res);
																	}
																else if(charr.length==0)
																	{
																	$("#inb_cnt_div").append(res);
																	}
																	
																
																}
															else
																{
																$("#inb_cnt_div").append(res);
																}
																
															$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
													    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
													    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
													    	$('.row_content').hover(
											         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
											          				 function(){ $(this).css('border-left', "1px solid #fff") 
											         				 }
											   					);
													    	 $("#action_gif").css("display","none");
										 						var success = generate_in('alert');
										    					 $.noty.setText(success.options.id, msg);
										    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
															//getAllMailCount(fdrname);
														}
													});
									
								}
							});
							
								}
							 else if(typ=="adv")
								{
									to=document.getElementById('hid_to_search').value;
									from=document.getElementById('hid_from_search').value;
									sub=document.getElementById('hid_sub_search').value;
									con=document.getElementById('hid_con_search').value;
									dt1=document.getElementById('hid_date1_search').value;
									dt2=document.getElementById('hid_date2_search').value;
									tagnm=document.getElementById('hid_tag_search').value;
									stnm=document.getElementById('hid_status_search').value;
									$.ajax({
													type : "GET",
													url : "${pageContext.request.contextPath}/getAllMailCountSearchAdv",
													data : {
														'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2, 'tagnm': tagnm,  'stnm': stnm, 'con':con,  'fldrnm': pfldr
													},
													contentType : "application/json",
													success : function(data) {
														if(data=="<$expire$>")
														{
														location.href ="${pageContext.request.contextPath}/inbox";
															}
														document.getElementById('hid_pagi_search_allmail').value=data;
														
														var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
														var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
														var sch_lmt1=$("#hid_mail_list_limit").val();
														var sch_lmt=25;
														if(sch_lmt1!=null && sch_lmt1!="")
															{
															sch_lmt=parseInt(sch_lmt1);
															}
														  pcnt=pcnt-1;
														 var sml=pcnt*sch_lmt;
														var all=pcnt*sch_lmt;
														if(all>=allml && allml!=0)
															{
															pcnt=pcnt-1;
															 var sml=pcnt*sch_lmt;
															var all=pcnt*sch_lmt;
															}
														var s=pcnt*sch_lmt+1;
														var e=sch_lmt;
															if(e>allml)
																{
																e=allml;
																}
															 if(allml==0)
															 {
															  document.getElementById("pagination_div").innerHTML='Search is empty';
															 $("#pagination_div").attr('title', 'Search is empty');
															 }
															  else
															 {
															 document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
															 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
															 }
															document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
															 var sno= sml+sch_lmt-delcnt;
															 var start=''+sno;
															 var end=delcnt;
														
														var pview=document.getElementById("hid_previewPane").value;
														
														$.ajax({
															type : "GET",
															url : "${pageContext.request.contextPath}/advSearchMail",
															data : {
																'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2,'tagnm': tagnm, 'stnm': stnm, 'con':con, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
															},
															contentType : "application/json",
															success : function(data) {
																if(data=="<$expire$>")
																{
																location.href ="${pageContext.request.contextPath}/inbox";
																	}
																var arr=data.split("<$nps$>");
															     var res="";
															        if(arr.length>1)
															        	{
															        	res=arr[1];
															        	}
															        $('.tag_main').css('display','none');
											 						$('.folder_view').css('display','none');
											 						$('#div_search_tool').css('display','none');
																	noneMail();
															        
																	var arr=ids.split("-");
											 						for(i=0;i<arr.length; i++)
											 							{
											 							var elem = document.getElementById("div_" + arr[i]);
											 							elem.parentNode.removeChild(elem);
											 							}
											 						if(res.indexOf("<div class='inbox_empty' >No messages found in")==0)
																	{
																	var charr=$( "#inb_cnt_div" ).children();
																	if(!charr.length)
																		{
																		$("#inb_cnt_div").append(res);
																		}
																	else if(charr.length==0)
																		{
																		$("#inb_cnt_div").append(res);
																		}
																		
																	
																	}
																else
																	{
																	$("#inb_cnt_div").append(res);
																	}
																	
																$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
														    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
														    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
														    	$('.row_content').hover(
												         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
												          				 function(){ $(this).css('border-left', "1px solid #fff") 
												         				 }
												   					);
														    	 $("#action_gif").css("display","none");
											 						var success = generate_in('alert');
											    					 $.noty.setText(success.options.id, msg);
											    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
															}
														});
													}
												});
										}
							
							
							
							
	 						
	 						
	   						
	   						}
	   					
	   					
	   					 
	   					/* getAllMailCountCurrent(fdrname)
	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
	   					{
	   					inboxUnread()
	   					//getUnreadMailCountInbox()
	   					}  */
							}
						else
							{
							document.getElementById('action_gif').style.display = "none";
							}
					}
				});
			}
				}
			}
	}
    
	
	
	
	function moveSpamAll() {
		//alert(id);
		/* var ids=getSelectdMailUid();
		if(ids==null || ids=="")
		{
			ids=$("#hid_mail_disp_count").val();
		}
		//alert(ids);
		
		document.getElementById('action_gif').style.display= 'block';
		var folder_dest="";
		var fdrname = document.getElementById('hid_active_fldr').value;
		var msg="";
		if(fdrname=="Junk" || fdrname=="JUNK" || fdrname=="junk" )
			{
			folder_dest="Inbox";
			// msg="Selected mail(s) has been moved to Inbox.";
			msg="The message has been marked as safe.";
			}
		else
			{
			folder_dest="Junk";
			//msg="Selected mail(s) has been moved to Junk.";
			msg="The message has been marked as spam.";
			}
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/webmailMoveToJunk",
					data : {
						'folder' : fdrname,
						'folder_dest' : folder_dest,
						'uid' : ids
					},
					contentType : "application/json",
					success : function(data) {
						var arr=ids.split("-");
						for(i=0;i<arr.length; i++)
							{
							var elem = document.getElementById("div_" + arr[i]);
							elem.parentNode.removeChild(elem);
							}
						document.getElementById('action_gif').style.display = "none";
						$('.tag_main').css('display','none');
						$('.folder_view').css('display','none');
						$('#div_search_tool').css('display','none');

						var success = generate_in('alert');
	   					 $.noty.setText(success.options.id, msg);
	   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
	   					if($("#hid_open_search").val()!="true")
	   						{
	   					getAllMailCountCurrent(fdrname)
	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="Junk" || fdrname=="JUNK" || fdrname=="junk"  )
	   					{
	   					inboxUnread()
	   					}
	   						}
					}
				});
		 */
		
		
		
		
		

		//  if ($('.tab_first_content').css('display') == "block")
		if($('#div_full_pg_disp').css('display') == "block")	
			{
			backToMailList();
			}
		
var ids=getSelectdMailUid();
if(ids==null || ids=="")
{
	ids=$("#hid_mail_disp_count").val();
}
//alert(ids);

document.getElementById('action_gif').style.display= 'block';
		var folder_dest="";
		var fdrname = document.getElementById('hid_active_fldr').value;
		var msg="";
		if(fdrname=="Junk" || fdrname=="JUNK" || fdrname=="junk" )
			{
			folder_dest="Inbox";
			// msg="Selected mail(s) has been moved to Inbox.";
			msg="The message has been marked as safe.";
			}
		else
			{
			folder_dest="Junk";
			//msg="Selected mail(s) has been moved to Junk.";
			msg="The message has been marked as spam.";
			}
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/webmailMoveToJunk",
					data : {
						'folder' : fdrname,
						'folder_dest' : folder_dest,
						'uid' : ids
					},
					contentType : "application/json",
					success : function(data) {
				
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
							}
						if(data!="false")
					{
				/* var arr=ids.split("-");
				for(i=0;i<arr.length; i++)
					{
					var elem = document.getElementById("div_" + arr[i]);
					elem.parentNode.removeChild(elem);
					}
				
				$('.tag_main').css('display','none');
				$('.folder_view').css('display','none');
				$('#div_search_tool').css('display','none');

			// document.getElementById('mail_spam').style.display = "block";
			//	 setTimeout( "jQuery('#mail_spam').hide();",3000 ); 
				 
				var success = generate_in('alert');
					 $.noty.setText(success.options.id, msg);
					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000); */
					 
					if($("#hid_open_search").val()!="true")
						{
					$.ajax({
				         type: "GET",
				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
				         data: {'path':fdrname},
				         contentType: "application/json",
				         success: function (data) {
				        	 if(data=="<$expire$>")
				        		{
				        		location.href ="${pageContext.request.contextPath}/inbox";
				        			}
				        	/* var arr1=ids.split("-");
				        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
				        	if(arr1.length < cntlmt)
				        		{
								for(i=0;i<arr1.length; i++)
								{
								var elem = document.getElementById("div_" + arr1[i]);
								elem.parentNode.removeChild(elem);
								}
				        		} */
							/* $('.tag_main').css('display','none');
							$('.folder_view').css('display','none');
							$('#div_search_tool').css('display','none'); */

							/* document.getElementById('mail_spam').style.display = "block";
							 setTimeout( "jQuery('#mail_spam').hide();",3000 ); */
							 
							
				        	 
				        	 
				        	 var arr=data.split("$");
				           
				           document.getElementById("hid_pagi_allmail").value=arr[1];
				       // refreshInbox(); refresh inbox here
				       
				       

var fdrname=document.getElementById('hid_active_fldr').value;
//	getWebmailInbox(fdrname);


if($('#div_for_compose').css('display')=='block')
{
	backFromComposeNew();
}
 else if($('#div_for_setting').css('display')=='block')
	{
	 document.getElementById('action_gif').style.display= 'block';
	 location.href ="${pageContext.request.contextPath}/inbox";
	} 
else
	{
	
	if($('#div_full_pg_disp').css('display') == "block")	
	{
	backToMailList();
	}
	
document.getElementById('div_for_setting').style.display='none';
//noneMail();
clearCompose();
document.getElementById('div_for_compose').style.display='none';
var pview=document.getElementById("hid_previewPane").value;
//alert(pview)
document.getElementById('div_for_inbox').style.display=  'block'; 

//document.getElementById("hid_dt_sorting").value="up";
//document.getElementById("hid_pagi_pcnt").value='1';
//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//var pfldr=document.getElementById('hid_active_fldr').value
//document.getElementById('hid_active_fldr').value=fdrname;
document.getElementById('mail_pagi').style.display= 'block';
document.getElementById('search_pagi').style.display= 'none';
document.getElementById('hid_pagi_search_allmail').value="";
document.getElementById('hid_pagi_search_pcnt').value="";
document.getElementById('hid_pagi_search_type').value="";
//document.getElementById(pfldr).className = "";
//document.getElementById(fdrname).className = "active_mailbox";






var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
var cntlmt=parseInt($("#hid_mail_list_limit").val());

pcnt=pcnt-1
var sml=pcnt*cntlmt;
var all=pcnt*cntlmt;
if(all>=allml)
{
pcnt=pcnt-1
var sml=pcnt*cntlmt;
var all=pcnt*cntlmt;
}
var arr=ids.split("-");
var delcnt=arr.length;
var sno= sml+cntlmt-delcnt;
document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
var start=''+sno;
var end=delcnt;


document.getElementById('action_gif').style.display= 'block';
$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getMailInbox",
			data : {
				'folder' : fdrname,
				'start' : start,
				'end' : end,
				'pview' : pview
			},
			contentType : "application/json",
			success : function(data) {
				// $("#fileSystem").html(data);
				// alert(data);
				if(data=="<$expire$>")
		{
			location.href ="${pageContext.request.contextPath}/inbox";
		}
				else
					{
				
					$('.tag_main').css('display','none');
						$('.folder_view').css('display','none');
						$('#div_search_tool').css('display','none');
						noneMail();
				window.prevflg="true";
				window.nextflg="true";
				/* if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
					{
					$("#div_from").html("TO");
					}
				else
					{
					$("#div_from").html("FROM");
					} */
					//var arr=id.split("-");
						for(i=0;i<arr.length; i++)
							{
							var elem = document.getElementById("div_" + arr[i]);
							elem.parentNode.removeChild(elem);
							}
					$("#inb_cnt_div").append(data);
				
				/* $("#fldr_"+fdrname).addClass('active_left_tree');
				$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val()); */
				
				$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
            	$('.row_content').hover(
        				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
         				 function(){ $(this).css('border-left', "1px solid #fff") 
        				 }
  					);
				document.getElementById('action_gif').style.display= 'none';
				//getAllMailCount(fdrname);
				getAllMailCountCurrent(fdrname);
				if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
				{
				inboxUnread();
				}
				if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
					{
						getDraftMailCount();
					//getUnreadMailCountInbox()
					}
				
				
				
				
				
				var success = generate_in('alert');
					 $.noty.setText(success.options.id, msg);
					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
			}}
		});

} 
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
				        
	   					/* getAllMailCountCurrent(fdrname)
	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
	   					{
	   					inboxUnread()
	   					//getUnreadMailCountInbox()
	   					} 
	   					if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
	   					{
	   						getDraftMailCount();
	   					//getUnreadMailCountInbox()
	   					}  */
	   					
	   				/* var success = generate_in('alert');
   					 $.noty.setText(success.options.id, msg);
   					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000); */
				         }
				     });
						}
					else
						{
						
						var arr=ids.split("-");
						var delcnt=arr.length;

						 var typ= document.getElementById('hid_pagi_search_type').value;
						 var pfldr=document.getElementById('hid_active_fldr').value;
						 
						 
						 if(typ=="quick")
							{
							quick_val=document.getElementById('hid_quick_search').value;
						$.ajax({
							type : "GET",
							url : "${pageContext.request.contextPath}/getAllMailCountSearchQck",
							data : {
								'quick_val':quick_val, 'fldrnm': pfldr
							},
							contentType : "application/json",
							success : function(data) {
								if(data=="<$expire$>")
								{
								location.href ="${pageContext.request.contextPath}/inbox";
									}
								document.getElementById('hid_pagi_search_allmail').value=data;
								
								
								 
								   
									var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
									var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
									var sch_lmt1=$("#hid_mail_list_limit").val();
									var sch_lmt=25;
									if(sch_lmt1!=null && sch_lmt1!="")
										{
										sch_lmt=parseInt(sch_lmt1);
										}
									  pcnt=pcnt-1;
									 var sml=pcnt*sch_lmt;
									var all=pcnt*sch_lmt;
									if(all>=allml)
										{
										pcnt=pcnt-1;
										 var sml=pcnt*sch_lmt;
										var all=pcnt*sch_lmt;
										}
									var s=pcnt*sch_lmt+1;
									var e=sch_lmt;
										if(e>allml)
											{
											e=allml;
											}
										document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
										 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
										document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
										 var sno= sml+sch_lmt-delcnt;
										 var start=''+sno;
										 var end=delcnt;
									
									var pview=document.getElementById("hid_previewPane").value;
									
									
										quick_val=document.getElementById('hid_quick_search').value;
									$.ajax({
													type : "GET",
													url : "${pageContext.request.contextPath}/quickSearchMail",
													data : {
														'quick_val':quick_val, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
													},
													contentType : "application/json",
													success : function(data) {
														// $("#fileSystem").html(data);
														// alert(data);
														if(data=="<$expire$>")
														{
														location.href ="${pageContext.request.contextPath}/inbox";
															} 
														var arr=data.split("<$nps$>");
													     var res="";
													        if(arr.length>1)
													        	{
													        	res=arr[1];
													        	}
													        $('.tag_main').css('display','none');
									 						$('.folder_view').css('display','none');
									 						$('#div_search_tool').css('display','none');
															noneMail();
													        
															var arr=ids.split("-");
									 						for(i=0;i<arr.length; i++)
									 							{
									 							var elem = document.getElementById("div_" + arr[i]);
									 							elem.parentNode.removeChild(elem);
									 							}
															$("#inb_cnt_div").append(res);
															
														$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
												    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
												    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
												    	$('.row_content').hover(
										         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
										          				 function(){ $(this).css('border-left', "1px solid #fff") 
										         				 }
										   					);
												    	 $("#action_gif").css("display","none");
									 						var success = generate_in('alert');
									    					 $.noty.setText(success.options.id, msg);
									    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
														//getAllMailCount(fdrname);
													}
												});
								
							}
						});
						
							}
						 else if(typ=="adv")
							{
								to=document.getElementById('hid_to_search').value;
								from=document.getElementById('hid_from_search').value;
								sub=document.getElementById('hid_sub_search').value;
								con=document.getElementById('hid_con_search').value;
								dt1=document.getElementById('hid_date1_search').value;
								dt2=document.getElementById('hid_date2_search').value;
								tagnm=document.getElementById('hid_tag_search').value;
								stnm=document.getElementById('hid_status_search').value;
								$.ajax({
												type : "GET",
												url : "${pageContext.request.contextPath}/getAllMailCountSearchAdv",
												data : {
													'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2, 'tagnm': tagnm,  'stnm': stnm, 'con':con,  'fldrnm': pfldr
												},
												contentType : "application/json",
												success : function(data) {
													if(data=="<$expire$>")
													{
													location.href ="${pageContext.request.contextPath}/inbox";
														}
													document.getElementById('hid_pagi_search_allmail').value=data;
													
													var pcnt=parseInt(document.getElementById("hid_pagi_search_pcnt").value);
													var allml=parseInt(document.getElementById("hid_pagi_search_allmail").value);
													var sch_lmt1=$("#hid_mail_list_limit").val();
													var sch_lmt=25;
													if(sch_lmt1!=null && sch_lmt1!="")
														{
														sch_lmt=parseInt(sch_lmt1);
														}
													  pcnt=pcnt-1;
													 var sml=pcnt*sch_lmt;
													var all=pcnt*sch_lmt;
													if(all>=allml)
														{
														pcnt=pcnt-1;
														 var sml=pcnt*sch_lmt;
														var all=pcnt*sch_lmt;
														}
													var s=pcnt*sch_lmt+1;
													var e=sch_lmt;
														if(e>allml)
															{
															e=allml;
															}
														document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
														 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
														document.getElementById("hid_pagi_search_pcnt").value=pcnt+1;
														 var sno= sml+sch_lmt-delcnt;
														 var start=''+sno;
														 var end=delcnt;
													
													var pview=document.getElementById("hid_previewPane").value;
													
													$.ajax({
														type : "GET",
														url : "${pageContext.request.contextPath}/advSearchMail",
														data : {
															'to':to, 'from':from, 'sub':sub, 'dt1':dt1, 'dt2':dt2,'tagnm': tagnm, 'stnm': stnm, 'con':con, 'start':start, 'end':end, 'fldrnm': pfldr, 'pview': pview
														},
														contentType : "application/json",
														success : function(data) {
															if(data=="<$expire$>")
															{
															location.href ="${pageContext.request.contextPath}/inbox";
																}
															var arr=data.split("<$nps$>");
														     var res="";
														        if(arr.length>1)
														        	{
														        	res=arr[1];
														        	}
														        $('.tag_main').css('display','none');
										 						$('.folder_view').css('display','none');
										 						$('#div_search_tool').css('display','none');
																noneMail();
														        
																var arr=ids.split("-");
										 						for(i=0;i<arr.length; i++)
										 							{
										 							var elem = document.getElementById("div_" + arr[i]);
										 							elem.parentNode.removeChild(elem);
										 							}
																$("#inb_cnt_div").append(res);
																
															$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
													    	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
													    	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
													    	$('.row_content').hover(
											         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
											          				 function(){ $(this).css('border-left', "1px solid #fff") 
											         				 }
											   					);
													    	 $("#action_gif").css("display","none");
										 						var success = generate_in('alert');
										    					 $.noty.setText(success.options.id, msg);
										    					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
														}
													});
												}
											});
									}
						
						
						
						
						
						
						
						
						}
					
					
					 
					/* getAllMailCountCurrent(fdrname)
					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
					{
					inboxUnread()
					//getUnreadMailCountInbox()
					}  */
					}
				else
					{
					document.getElementById('action_gif').style.display = "none";
					}
			}
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	function moveSpamAllFV() {
		
		
		
var ids=getSelectdMailUid();
if(ids==null || ids=="")
{
	ids=$("#hid_mail_disp_count").val();
}
//alert(ids);

document.getElementById('action_gif').style.display= 'block';
var uid=ids;
var uidstatus="next";
var fdrname = document.getElementById('hid_active_fldr').value;
var pview=document.getElementById("hid_previewPane").value;
document.getElementById('action_gif').style.display= 'block';
/* document.getElementById('div_search_tool').style.display = "block";

document.getElementById("div_hid_opt1").className="hidden_option";
document.getElementById("div_hid_opt2").className="hidden_option"; */


	var ur_scc="row_left";
	var search_st=$("#hid_open_search").val();
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/getMailContentFullPageByUid",
		data : {
			'folder' : fdrname,
			'uid' : uid,
			'uidstatus':uidstatus,
			'search_st':search_st
		},
		/*  contentType : "application/json", */
		contentType : 'application/json; charset=UTF-8',
		success : function(data) {
			var obj = jQuery.parseJSON(data);
			
			var nextst=true;
			if(obj.content=="<nps>")
				nextst=false;
			
		var folder_dest="";
		var fdrname = document.getElementById('hid_active_fldr').value;
		var msg="";
		if(fdrname=="Junk" || fdrname=="JUNK" || fdrname=="junk" )
			{
			folder_dest="Inbox";
			// msg="Selected mail(s) has been moved to Inbox.";
			msg="The message has been marked as safe.";
			}
		else
			{
			folder_dest="Junk";
			//msg="Selected mail(s) has been moved to Junk.";
			msg="The message has been marked as spam.";
			}
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/webmailMoveToJunk",
					data : {
						'folder' : fdrname,
						'folder_dest' : folder_dest,
						'uid' : ids
					},
					contentType : "application/json",
					success : function(data) {
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
						}
					if(data!="false")
					{
					 
				
					$.ajax({
				         type: "GET",
				         url: "${pageContext.request.contextPath}/getAllMailCountInfolderDiv",
				         data: {'path':fdrname},
				         contentType: "application/json",
				         success: function (data) {
				        	 if(data=="<$expire$>")
				        		{
				        		location.href ="${pageContext.request.contextPath}/inbox";
				        			}
				        	/* var arr1=ids.split("-");
				        	var cntlmt=parseInt($("#hid_mail_list_limit").val());
				        	if(arr1.length < cntlmt)
				        		{
								for(i=0;i<arr1.length; i++)
								{
								var elem = document.getElementById("div_" + arr1[i]);
								elem.parentNode.removeChild(elem);
								}
				        		} */
							/* $('.tag_main').css('display','none');
							$('.folder_view').css('display','none');
							$('#div_search_tool').css('display','none'); */

							/* document.getElementById('mail_spam').style.display = "block";
							 setTimeout( "jQuery('#mail_spam').hide();",3000 ); */
							 
							
				        	 
				        	 
				        	 var arr=data.split("$");
				           
				           document.getElementById("hid_pagi_allmail").value=arr[1];
				       // refreshInbox(); refresh inbox here
				       
				       

var fdrname=document.getElementById('hid_active_fldr').value;
//	getWebmailInbox(fdrname);


if($('#div_for_compose').css('display')=='block')
{
	backFromComposeNew();
}
 else if($('#div_for_setting').css('display')=='block')
	{
	 document.getElementById('action_gif').style.display= 'block';
	 location.href ="${pageContext.request.contextPath}/inbox";
	} 
else
	{
	
	/* if($('#div_full_pg_disp').css('display') == "block")	
	{
	backToMailList();
	} */
	
document.getElementById('div_for_setting').style.display='none';
//noneMail();
clearCompose();
document.getElementById('div_for_compose').style.display='none';
var pview=document.getElementById("hid_previewPane").value;
//alert(pview)
document.getElementById('div_for_inbox').style.display=  'block'; 

//document.getElementById("hid_dt_sorting").value="up";
//document.getElementById("hid_pagi_pcnt").value='1';
//document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
//var pfldr=document.getElementById('hid_active_fldr').value
//document.getElementById('hid_active_fldr').value=fdrname;
document.getElementById('mail_pagi').style.display= 'block';
document.getElementById('search_pagi').style.display= 'none';
document.getElementById('hid_pagi_search_allmail').value="";
document.getElementById('hid_pagi_search_pcnt').value="";
document.getElementById('hid_pagi_search_type').value="";
//document.getElementById(pfldr).className = "";
//document.getElementById(fdrname).className = "active_mailbox";






var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
var cntlmt=parseInt($("#hid_mail_list_limit").val());

pcnt=pcnt-1
var sml=pcnt*cntlmt;
var all=pcnt*cntlmt;
if(all>=allml)
{
pcnt=pcnt-1
var sml=pcnt*cntlmt;
var all=pcnt*cntlmt;
}
var arr=ids.split("-");
var delcnt=arr.length;
var sno= sml+cntlmt-delcnt;
document.getElementById('hid_pagi_pcnt').value=(pcnt+1);
var start=''+sno;
var end=delcnt;


document.getElementById('action_gif').style.display= 'block';
$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getMailInbox",
			data : {
				'folder' : fdrname,
				'start' : start,
				'end' : end,
				'pview' : pview
			},
			contentType : "application/json",
			success : function(data) {
				// $("#fileSystem").html(data);
				// alert(data);
				if(data=="<$expire$>")
		{
			location.href ="${pageContext.request.contextPath}/inbox";
		}
				else
					{
				
					$('.tag_main').css('display','none');
						$('.folder_view').css('display','none');
						$('#div_search_tool').css('display','none');
						noneMail();
				window.prevflg="true";
				window.nextflg="true";
				/* if(fdrname=="Sent" || fdrname=="sent" || fdrname=="Drafts" || fdrname=="drafts")
					{
					$("#div_from").html("TO");
					}
				else
					{
					$("#div_from").html("FROM");
					} */
					//var arr=id.split("-");
						for(i=0;i<arr.length; i++)
							{
							var elem = document.getElementById("div_" + arr[i]);
							elem.parentNode.removeChild(elem);
							}
					$("#inb_cnt_div").append(data);
				
				/* $("#fldr_"+fdrname).addClass('active_left_tree');
				$(".active_left_tree").css("border-left","3px solid "+$("#hid_mail_bgColor").val()); */
				
				$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());
            	$('.row_content').hover(
        				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
         				 function(){ $(this).css('border-left', "1px solid #fff") 
        				 }
  					);
				document.getElementById('action_gif').style.display= 'none';
				//getAllMailCount(fdrname);
				getAllMailCountCurrent(fdrname);
				if(fdrname=="INBOX" || fdrname=="Inbox" || fdrname=="inbox")
				{
				inboxUnread();
				}
				if(fdrname=="Drafts" || fdrname=="DRAFTS" || fdrname=="drafts" )
					{
						getDraftMailCount();
					//getUnreadMailCountInbox()
					}
				
				
				
				
				
				var success = generate_in('alert');
					 $.noty.setText(success.options.id, msg);
					 setTimeout(function () {  $.noty.close(success.options.id); }, 5000);
					 
					 if(obj.success=="false" && obj.content =="<$expire$>")
	   					{
	   						location.href ="${pageContext.request.contextPath}/inbox";
	   					}
	   					else if(obj.success=="false" && obj.content=="<nps>")
	   					{
	   						backToMailList();
	   						$("#div_full_pg_disp").html("");
	   						document.getElementById('action_gif').style.display= 'none';

	   					}
	   					else
	   						{
	   					
	   						data=obj.content;
	   					data = data.replace(/\.mail_content/g, '.mail_content_np');
	   					document.getElementById('div_half_pg_disp').style.display= 'none';
	   					document.getElementById('div_full_pg_disp').style.display= 'block';
	   					document.getElementById('action_gif').style.display= 'none';
	   					$("#div_full_pg_disp").html(data);
	   					$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
	   					$('.mail_content').css('height',left_scollx-129);
	   				//	document.getElementById("div_unread_"+uid).className ="row_left";
	   					$(".mail_content_1 a").attr("target","_blank");
	   					$(".attachment_option a").removeAttr("target");
	   					$(".attachment_file a").removeAttr("target");
	   				
	   				//	var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
	   				var inline=parseInt($('#hid_inline_sz').val());
	   					if(inline>0)
	   						{
	   						
	   						 var i=1;
	   						 $('.mail_content_1 img').each(function(){
	   							 var str = $(this).attr('src');
	   						
	   							  if ( str.startsWith("cid:"))
	   					    	   {
	   								str=str.replace("cid:","");
	   								str = str.replace(/@/g, '_');
	   								  str = str.replace(/\./g, '_');
	   								$(this).attr('src',$('#'+str).val());
	   					   		  
	   					    	   } 
	   							
	   							 });
	   						
	   						
	   					
	   						}
	   					 
	   					 
	   					 
	   					 
	   					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
	   					{
	   					inboxUnread()
	   					}
	   					try
	   					{
	   					var nm=$('#chk_id_'+uid).attr('name');
	   					var nm_arr=nm.split('-');
	   					$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
	   				}
	   				catch (e) {
	   					// TODO: handle exception
	   				}
	   				
	   				

	   				var rulesForCssText = function (styleContent) { 
	   				var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
	   				styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
	   				return styleElement.sheet.cssRules;
	   				};
	   				$('.mail_content_1 style').each(function(){
	   					var modfieddCss = '';
	   					var currentCss =  rulesForCssText($(this).html());
	   					
	   					$(this).html('');
	   					for(var i =0; i< currentCss.length;i++)
	   					{
	   						if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
	   						{
	   							var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
	   							modfieddCss+= media;
	   							}
	   						else {
	   							modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
	   							} 
	   						}$(this).html(modfieddCss);}); 
	   				
	   				try
	   				{
	   					//document.getElementById("div_"+uid).className="row_content pading_main";
	   					var nwuid=obj.uid;
	   					$("#hid_mail_disp_count").val(nwuid);
	   					document.getElementById("div_"+nwuid).className="row_content selected_row pading_main";
	   					var msgno=obj.msgno;
	   					if(msgno!=null && msgno!="")
	   						{
	   						var mgno=parseInt(msgno);
	   						if(mgno-1==0)
	   							{
	   							$(".prev_"+uid).attr("name", "no");
	   							$(".prev_"+uid+" > div").css("border-color", "#e4e4e4");
	   							$(".prev_"+uid+" > div > img").css("opacity", "0.5");
	   							}
	   						var pcntt=obj.allmsgno;
	   						if(pcntt!="")
	   							{
	   							var noall=parseInt(pcntt.trim());
	   							if(mgno+1>noall)
	   								{
	   								
	   								$(".next_"+uid).attr("name", "no");
	   								$(".next_"+uid+" > div").css("border-color", "#e4e4e4");
	   								$(".next_"+uid+" > div > img").css("opacity", "0.5");
	   								}
	   							}
	   						}
	   				}
	   				catch (e) {
	   					// TODO: handle exception
	   				}
	   						}
			}}
		});

} 
				        
				        
				 }
				     });
						
					
					
					 
					/* getAllMailCountCurrent(fdrname)
					if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
					{
					inboxUnread()
					//getUnreadMailCountInbox()
					}  */
					}
				else
					{
					document.getElementById('action_gif').style.display = "none";
					}
			}
		});
		
		}
	});
		
	}
	
	function moveSpamAllDisp() {
		//document.getElementById('action_gif').style.display= 'block';
		if($("#hid_open_search").val()!="true")
			{
			moveSpamAllFV();
			}
		else
			{
			backToMailList();
			moveSpamAll();
			}
	}
	
	function moveTrashAll() {
		//alert(id);
		var ids=getSelectdMailUid();
		if(ids==null || ids=="")
		{
			ids=$("#hid_mail_disp_count").val();
		}
		//var msg="Are you sure you want to delete all selected mails?";
		var fdrname = document.getElementById('hid_active_fldr').value;
		if(fdrname=="Trash" || fdrname=="trash")
			{
			var msg="Are you sure you want to delete all selected mails permanently?";
			$('.web_dialog_overlay').show(); 
			mail_del_conf('confirm',msg,ids,true);
			}
		else
			{
			mailDelete(ids);
			}
		
		
	}
	
	function moveTrashAllFV() {
		//alert(id);
		var ids=getSelectdMailUid();
		if(ids==null || ids=="")
		{
			ids=$("#hid_mail_disp_count").val();
		}
		//var msg="Are you sure you want to delete all selected mails?";
		var fdrname = document.getElementById('hid_active_fldr').value;
		if(fdrname=="Trash" || fdrname=="trash")
			{
			var msg="Are you sure you want to delete all selected mails permanently?";
			$('.web_dialog_overlay').show(); 
			 mail_del_conf('confirm',msg,ids,false);
			}
		else
			{
			mailDeleteFV(ids);
			}
		
		
	}
	function moveTrashAllDisp() {
		//document.getElementById('action_gif').style.display= 'block';
		if($("#hid_open_search").val()!="true")
			{
			moveTrashAllFV();
			}
		else
			{
			backToMailList();
			moveTrashAll();
			}
	}
	
</script>
<script type="text/javascript">
function dtSorting()
{
	//alert('hi');
	var dt_sort_val=document.getElementById("hid_dt_sorting").value;
	document.getElementById("hid_pagi_pcnt").value='1';
	//var fdrnm=document.getElementById('hid_active_fldr').value;
	//alert(fdrnm);
	if(dt_sort_val=="up")
		{
		document.getElementById("hid_dt_sorting").value="down";
		document.getElementById("dt_sorting").innerHTML="<img src='images/up_date.png'>";
		getWebmailInboxDesc( );
		}
	else
		{
		document.getElementById("hid_dt_sorting").value="up";
		document.getElementById("dt_sorting").innerHTML="<img src='images/down_date.png'>";
		getWebmailInboxRefresh()
		}
	
}
</script>

<script type="text/javascript">
function toggle(source) {
	//dfdf
	var cnt=0;
	
	var pview=document.getElementById("hid_previewPane").value;
	var left_css="row_content ";
	
		if(pview=="Vertical view")
			{
			left_css=left_css+"left_view_mess ";
			}
		else
			{
			left_css=left_css+"pading_main ";
			}
	
  checkboxes1 = document.getElementsByName('unseen-stared');
  for(var i=0, n=checkboxes1.length;i<n;i++) {
    checkboxes1[i].checked = source.checked;
    if(source.checked==true)
    	{
    	//document.getElementById("div_"+(checkboxes1[i].value)).className=left_css+"selected_row";
    	$("#div_"+(checkboxes1[i].value)).addClass("selected_row");
    	}
    else
    	{
    	//document.getElementById("div_"+(checkboxes1[i].value)).className=left_css;
    	$("#div_"+(checkboxes1[i].value)).removeClass("selected_row");
    	}
    cnt++;
  }

  checkboxes2 = document.getElementsByName('seen-unstared');
  for(var i=0, n=checkboxes2.length;i<n;i++) {
    checkboxes2[i].checked = source.checked;
    if(source.checked==true)
	{
	//document.getElementById("div_"+(checkboxes2[i].value)).className=left_css+"selected_row";
	$("#div_"+(checkboxes2[i].value)).addClass("selected_row");
	}
else
	{
	//document.getElementById("div_"+(checkboxes2[i].value)).className=left_css;
	$("#div_"+(checkboxes2[i].value)).removeClass("selected_row");
	}
    cnt++;
  }
  
  checkboxes3 = document.getElementsByName('unseen-unstared');
  for(var i=0, n=checkboxes3.length;i<n;i++) {
    checkboxes3[i].checked = source.checked;
    if(source.checked==true)
	{
	//document.getElementById("div_"+(checkboxes3[i].value)).className=left_css+"selected_row";
    	$("#div_"+(checkboxes3[i].value)).addClass("selected_row");
	}
else
	{
	//document.getElementById("div_"+(checkboxes3[i].value)).className=left_css;
	$("#div_"+(checkboxes3[i].value)).removeClass("selected_row");
	}
    cnt++;
  }
  
  checkboxes4 = document.getElementsByName('seen-stared');
  for(var i=0, n=checkboxes4.length;i<n;i++) {
    checkboxes4[i].checked = source.checked;
    if(source.checked==true)
	{
	//document.getElementById("div_"+(checkboxes4[i].value)).className=left_css+"selected_row";
    	$("#div_"+(checkboxes4[i].value)).addClass("selected_row");
	}
else
	{
	//document.getElementById("div_"+(checkboxes4[i].value)).className=left_css;
	$("#div_"+(checkboxes4[i].value)).removeClass("selected_row");
	}
    cnt++;
	}
  
  if(source.checked==true)
	{
	 if(cnt>0)
		 {
	 document.getElementById('div_search_tool').style.display = "block";
	  if(cnt>1)
	 	 {
	 	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 	 }
	  $('.tag_main').css('display','block');
	  $('.folder_view').css('display','block');
		 }
	 else
	  {
	  document.getElementById('div_search_tool').style.display = "none";
	  $('.tag_main').css('display','none');
		$('.folder_view').css('display','none');
	  }
	}
  else
	  {
	  document.getElementById('div_search_tool').style.display = "none";
	  $('.tag_main').css('display','none');
		$('.folder_view').css('display','none');
	  }
  selMailCountInPanel();
  return cnt;
}

function toggleNP(source) {
	
	var cnt=0;
	
	var pview=document.getElementById("hid_previewPane").value;
	var left_css="row_content ";
	
		if(pview=="Vertical view")
			{
			left_css=left_css+"left_view_mess ";
			}
		else
			{
			left_css=left_css+"pading_main ";
			}
	
		 checkboxes1 = document.getElementsByName('unseen-stared');
		  for(var i=0, n=checkboxes1.length;i<n;i++) {
		    checkboxes1[i].checked = source.checked;
		    if(source.checked==true)
		    	{
		    	//document.getElementById("div_"+(checkboxes1[i].value)).className=left_css+"selected_row";
		    	$("#div_"+(checkboxes1[i].value)).addClass("selected_row");
		    	}
		    else
		    	{
		    	//document.getElementById("div_"+(checkboxes1[i].value)).className=left_css;
		    	$("#div_"+(checkboxes1[i].value)).removeClass("selected_row");
		    	}
		    cnt++;
		  }

		  checkboxes2 = document.getElementsByName('seen-unstared');
		  for(var i=0, n=checkboxes2.length;i<n;i++) {
		    checkboxes2[i].checked = source.checked;
		    if(source.checked==true)
			{
			//document.getElementById("div_"+(checkboxes2[i].value)).className=left_css+"selected_row";
			$("#div_"+(checkboxes2[i].value)).addClass("selected_row");
			}
		else
			{
			//document.getElementById("div_"+(checkboxes2[i].value)).className=left_css;
			$("#div_"+(checkboxes2[i].value)).removeClass("selected_row");
			}
		    cnt++;
		  }
		  
		  checkboxes3 = document.getElementsByName('unseen-unstared');
		  for(var i=0, n=checkboxes3.length;i<n;i++) {
		    checkboxes3[i].checked = source.checked;
		    if(source.checked==true)
			{
			//document.getElementById("div_"+(checkboxes3[i].value)).className=left_css+"selected_row";
		    	$("#div_"+(checkboxes3[i].value)).addClass("selected_row");
			}
		else
			{
			//document.getElementById("div_"+(checkboxes3[i].value)).className=left_css;
			$("#div_"+(checkboxes3[i].value)).removeClass("selected_row");
			}
		    cnt++;
		  }
		  
		  checkboxes4 = document.getElementsByName('seen-stared');
		  for(var i=0, n=checkboxes4.length;i<n;i++) {
		    checkboxes4[i].checked = source.checked;
		    if(source.checked==true)
			{
			//document.getElementById("div_"+(checkboxes4[i].value)).className=left_css+"selected_row";
		    	$("#div_"+(checkboxes4[i].value)).addClass("selected_row");
			}
		else
			{
			//document.getElementById("div_"+(checkboxes4[i].value)).className=left_css;
			$("#div_"+(checkboxes4[i].value)).removeClass("selected_row");
			}
		    cnt++;
			}
		  
  
  if(source.checked==true)
	{
	 if(cnt>0)
		 {
	 document.getElementById('div_search_tool').style.display = "block";
	  if(cnt>1)
	 	 {
	 	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 	 }
	  $('.tag_main').css('display','block');
	  $('.folder_view').css('display','block');
		 }
	 else
	  {
	  document.getElementById('div_search_tool').style.display = "none";
	  $('.tag_main').css('display','none');
		$('.folder_view').css('display','none');
	  }
	}
  else
	  {
	  document.getElementById('div_search_tool').style.display = "none";
	  $('.tag_main').css('display','none');
		$('.folder_view').css('display','none');
	  }
  //selMailCountInPanel();
  return cnt;
}

function allMail()
{
//alert('all');
 document.getElementById("allmail").checked = true;
 var cnt=parseInt(toggle(document.getElementById("allmail")) );
 
if(cnt>0)
	{
 document.getElementById('div_search_tool').style.display = "block";
 if(cnt>1)
	 {
	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 }
 	selMailCountInPanel();
	}
}

function noneMail()
{
//alert('none');
 document.getElementById("allmail").checked = false;
 var cnt=toggle(document.getElementById("allmail")) ;
 document.getElementById('div_search_tool').style.display = "none";
 selMailCountInPanel();
}

function noneMailDisplay()
{
//alert('none');
 document.getElementById("allmail").checked = false;
 var cnt=toggleNP(document.getElementById("allmail")) ;
 document.getElementById('div_search_tool').style.display = "none";
// selMailCountInPanelDisplay();
}

function seenMail()
{
 noneMail()
 var pview=document.getElementById("hid_previewPane").value;
	var left_css="row_content ";
	
		if(pview=="Vertical view")
			{
			left_css=left_css+"left_view_mess ";
			}
		else
			{
			left_css=left_css+"pading_main ";
			}
 var cnt=0;
 //var source=document.getElementById("allmail");
 checkboxes2 = document.getElementsByName('seen-unstared');
  for(var i=0, n=checkboxes2.length;i<n;i++) 
  {
    checkboxes2[i].checked = true;
   	document.getElementById("div_"+(checkboxes2[i].value)).className=left_css+"selected_row";
	cnt++;
  }
  
    checkboxes4 = document.getElementsByName('seen-stared');
  for(var i=0, n=checkboxes4.length;i<n;i++)
  {
    checkboxes4[i].checked = true;
    document.getElementById("div_"+(checkboxes4[i].value)).className=left_css+"selected_row";
    cnt++;
	}
 // alert(cnt);
  if(cnt>0)
	  {
	  document.getElementById("allmail").checked = true;
 document.getElementById('div_search_tool').style.display = "block";
 if(cnt>1)
	 {
	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 }
 selMailCountInPanel();
	  }
}

function unseenMail()
{
noneMail()
var cnt=0;
var pview=document.getElementById("hid_previewPane").value;
var left_css="row_content ";

	if(pview=="Vertical view")
		{
		left_css=left_css+"left_view_mess ";
		}
	else
		{
		left_css=left_css+"pading_main ";
		}
checkboxes1 = document.getElementsByName('unseen-stared');
  for(var i=0, n=checkboxes1.length;i<n;i++) 
  {
    checkboxes1[i].checked = true;
    document.getElementById("div_"+(checkboxes1[i].value)).className=left_css+"selected_row";
    cnt++;
  }

  
  checkboxes3 = document.getElementsByName('unseen-unstared');
  for(var i=0, n=checkboxes3.length;i<n;i++) 
  {
    checkboxes3[i].checked = true;
    document.getElementById("div_"+(checkboxes3[i].value)).className=left_css+"selected_row";
    cnt++;
  }
  //alert(cnt);
   if(cnt>0)
	  {
	  document.getElementById("allmail").checked = true;
  document.getElementById('div_search_tool').style.display = "block";
 if(cnt>1)
	 {
	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 }
 selMailCountInPanel();
	  }
}


function staredMail()
{
noneMail();
var cnt=0;
var pview=document.getElementById("hid_previewPane").value;
var left_css="row_content ";

	if(pview=="Vertical view")
		{
		left_css=left_css+"left_view_mess ";
		}
	else
		{
		left_css=left_css+"pading_main ";
		}
checkboxes1 = document.getElementsByName('unseen-stared');
  for(var i=0, n=checkboxes1.length;i<n;i++) 
  {
    checkboxes1[i].checked = true;
    document.getElementById("div_"+(checkboxes1[i].value)).className=left_css+"selected_row";
    cnt++;
  }

 
  checkboxes4 = document.getElementsByName('seen-stared');
  for(var i=0, n=checkboxes4.length;i<n;i++) 
  {
    checkboxes4[i].checked = true;
    document.getElementById("div_"+(checkboxes4[i].value)).className=left_css+"selected_row";
    cnt++;
	}
//alert(cnt);
 if(cnt>0)
	  {
	  document.getElementById("allmail").checked = true;
document.getElementById('div_search_tool').style.display = "block";
 if(cnt>1)
	 {
	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 }
 selMailCountInPanel();
	  }
}


function unstaredMail()
{
noneMail();
var cnt=0;
var pview=document.getElementById("hid_previewPane").value;
var left_css="row_content ";

	if(pview=="Vertical view")
		{
		left_css=left_css+"left_view_mess ";
		}
	else
		{
		left_css=left_css+"pading_main ";
		}

 checkboxes2 = document.getElementsByName('seen-unstared');
  for(var i=0, n=checkboxes2.length;i<n;i++) 
  {
    checkboxes2[i].checked = true;
    document.getElementById("div_"+(checkboxes2[i].value)).className=left_css+"selected_row";
    cnt++;
  }
  
  checkboxes3 = document.getElementsByName('unseen-unstared');
  for(var i=0, n=checkboxes3.length;i<n;i++) 
  {
    checkboxes3[i].checked = true;
    document.getElementById("div_"+(checkboxes3[i].value)).className=left_css+"selected_row";
    cnt++;
  }
 // alert(cnt);
 
  if(cnt>0)
	  {
	  document.getElementById("allmail").checked = true;
 document.getElementById('div_search_tool').style.display = "block";
 if(cnt>1)
	 {
	 document.getElementById("div_hid_opt1").className="hidden_option disable";
	 document.getElementById("div_hid_opt2").className="hidden_option disable";
	 }
	 
 selMailCountInPanel();
	  }
}



function getSelectdMailUid()
{
var checkedValue = ""; 
var inputElements1 = document.getElementsByName('unseen-stared');
for(var i=0; inputElements1[i]; ++i){
      if(inputElements1[i].checked){
			if(checkedValue == "")
			{
			checkedValue = inputElements1[i].value;
			}
			else
			{
			checkedValue =checkedValue+"-"+ inputElements1[i].value;
			}
          
      }
}

var inputElements2 = document.getElementsByName('unseen-unstared');
for(var i=0; inputElements2[i]; ++i){
      if(inputElements2[i].checked){
			if(checkedValue == "")
			{
			checkedValue = inputElements2[i].value;
			}
			else
			{
			checkedValue =checkedValue+"-"+ inputElements2[i].value;
			}
          
      }
}

var inputElements3 = document.getElementsByName('seen-unstared');
for(var i=0; inputElements3[i]; ++i){
      if(inputElements3[i].checked){
			if(checkedValue == "")
			{
			checkedValue = inputElements3[i].value;
			}
			else
			{
			checkedValue =checkedValue+"-"+ inputElements3[i].value;
			}
          
      }
}


var inputElements4 = document.getElementsByName('seen-stared');
for(var i=0; inputElements4[i]; ++i){
      if(inputElements4[i].checked){
			if(checkedValue == "")
			{
			checkedValue = inputElements4[i].value;
			}
			else
			{
			checkedValue =checkedValue+"-"+ inputElements4[i].value;
			}
          
      }
}

//alert("hi"+checkedValue);
return checkedValue;
}



function setSetectedMailUnRead() {
	var smail= getSelectdMailUid();
	if(smail==null || smail=="")
	{
		smail=$("#hid_mail_disp_count").val();
	}
	//alert(smail);
	
	document.getElementById('action_gif').style.display= 'block';

	//alert('hello');
	
	var fdrname = document.getElementById('hid_active_fldr').value;
	
	//var y = document.getElementById(flg_id).className;
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/webmailUnReadAtion",
		data : {
			'folder' : fdrname,
			'uid' : smail
		},
		contentType : "application/json",			
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
				}

			var arr=smail.split("-");
			for(i=0;i<arr.length;i++)
				{
				
				try
				{
					var nm=$('#chk_id_'+arr[i]).attr('name');
					//nm= nm.replace("unstared", "stared");	
					var nm_arr=nm.split('-');
					$('#chk_id_'+arr[i]).attr('name',"unseen-"+nm_arr[1]);
				}
				catch (e) {
					// TODO: handle exception
				}
				try
				{
					$("#div_"+arr[i]).addClass("unread_rc");
				}
				catch (e) {
					// TODO: handle exception
				}
				
				var flg_id = "div_unread_" + arr[i];
				//document.getElementById(flg_id).className = 'row_left unread_message';
				$('#'+flg_id).addClass('unread_message');
				}
			document.getElementById('action_gif').style.display= 'none';
			if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
			{
			inboxUnread()
			}
				

		}
	});
	
}

function setSetectedMailUnReadDisp() {
	
	//document.getElementById('action_gif').style.display= 'block';
	//backToMailList();
	 setSetectedMailUnRead();
	
}

function setSetectedMailRead() {
	var smail= getSelectdMailUid();
	if(smail==null || smail=="")
	{
		smail=$("#hid_mail_disp_count").val();
	}
	//alert(smail);
	
	document.getElementById('action_gif').style.display= 'block';

	//alert('hello');
	
	var fdrname = document.getElementById('hid_active_fldr').value;
	
	//var y = document.getElementById(flg_id).className;
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/webmailReadAtion",
		data : {
			'folder' : fdrname,
			'uid' : smail
		},
		contentType : "application/json",			
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
			}
			var arr=smail.split("-");
			for(i=0;i<arr.length;i++)
				{
				
				try
				{
					var nm=$('#chk_id_'+arr[i]).attr('name');
					//nm= nm.replace("unstared", "stared");	
					var nm_arr=nm.split('-');
					$('#chk_id_'+arr[i]).attr('name',"seen-"+nm_arr[1]);
				}
				catch (e) {
					// TODO: handle exception
				}
				
				try
				{
					$("#div_"+arr[i]).removeClass("unread_rc");
				}
				catch (e) {
					// TODO: handle exception
				}
				var flg_id = "div_unread_" + arr[i];
				document.getElementById(flg_id).className = 'row_left';
				var pview=document.getElementById("hid_previewPane").value;
				if(pview=="Vertical view")
						{
					$('#'+flg_id).addClass('left_view_con');
						}
				}
				document.getElementById('action_gif').style.display= 'none';
				if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
				{
				inboxUnread()
				}

		}
	});
	
}


function setSetectedMailReadDisp() {
	
	//document.getElementById('action_gif').style.display= 'block';
	//backToMailList();
	setSetectedMailRead();
	
}


function setSetectedMailFlag() {
	var smail= getSelectdMailUid();
	if(smail==null || smail=="")
	{
		smail=$("#hid_mail_disp_count").val();
	}
	document.getElementById('action_gif').style.display= 'block';

	var fdrname = document.getElementById('hid_active_fldr').value;
	var type = 'set';
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/webmailFlagAtion",
		data : {
			'folder' : fdrname,
			'flagtp' : type,
			'uid' : smail
		},
		contentType : "application/json",			
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
				}

			var arr=smail.split("-");
			for(i=0;i<arr.length;i++)
				{
				var pview=document.getElementById("hid_previewPane").value;
				try
				{
					var nm=$('#chk_id_'+arr[i]).attr('name');
					//nm= nm.replace("unstared", "stared");	
					var nm_arr=nm.split('-');
					$('#chk_id_'+arr[i]).attr('name',nm_arr[0]+"-stared");
				}
				catch (e) {
					// TODO: handle exception
				}
				if(pview=="Vertical view")
						{
					    var flg_id = "left_div_flag_" + arr[i];
					  // $("#"+flg_id).html("<img src='images/star-flag.png'>");
					    document.getElementById(flg_id).className = 'new_flag_color';
						$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
						$(".draft_img").css("color",$("#hid_mail_bgColor").val());
						var disp_flg_id = "flag_div_disp_" + arr[i];
						try {
							document.getElementById(disp_flg_id).className = 'bottom_flag_red';
							$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
							}
							catch(err) {
							
							}

						 }
					else
						{
						var flg_id = "div_flag_" + arr[i];
						document.getElementById(flg_id).className = 'small_image_flag';
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
						var disp_flg_id = "flag_div_disp_" + arr[i];
						try {
							document.getElementById(disp_flg_id).className = 'bottom_flag_red';
							$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
							}
							catch(err) {
							
							}
						} 
				
				
				}
				document.getElementById('action_gif').style.display= 'none';

		}
	});
	
}


function setSetectedMailFlagDisp() {
	
//	document.getElementById('action_gif').style.display= 'block';
//	backToMailList();
	setSetectedMailFlag();
}



function setSetectedMailUnFlag() {
	var smail= getSelectdMailUid();
	if(smail==null || smail=="")
	{
		smail=$("#hid_mail_disp_count").val();
	}
	document.getElementById('action_gif').style.display= 'block';

	var fdrname = document.getElementById('hid_active_fldr').value;
	var type = 'remove';
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/webmailFlagAtion",
		data : {
			'folder' : fdrname,
			'flagtp' : type,
			'uid' : smail
		},
		contentType : "application/json",			
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
				}
	
			var arr=smail.split("-");
			for(i=0;i<arr.length;i++)
				{
				
				try
				{
					var nm=$('#chk_id_'+arr[i]).attr('name');
					//nm= nm.replace("stared", "unstared");	
					var nm_arr=nm.split('-');
					$('#chk_id_'+arr[i]).attr('name',nm_arr[0]+"-unstared");
				}
				catch (e) {
					// TODO: handle exception
				}
				var pview=document.getElementById("hid_previewPane").value;
				if(pview=="Vertical view")
						{
					    var flg_id = "left_div_flag_" + arr[i];
					    document.getElementById(flg_id).className ='new_flag';
					    $(".new_flag").css("color","#c8c8c8");
					 /*   $("#"+flg_id).html("<img src='images/star-flag.png'>"); */
					    var disp_flg_id = "flag_div_disp_" + arr[i];

					    try {
					    		document.getElementById(disp_flg_id).className = 'bottom_flag';
					    		$(".bottom_flag").css("color","#c8c8c8");
					    		}
					    	catch(err) {
					        
					    		}
						}
					else
						{
						var flg_id = "div_flag_" + arr[i];
						document.getElementById(flg_id).className = 'small_image';
						$(".small_image").css("color","#c8c8c8");
						 var disp_flg_id = "flag_div_disp_" + arr[i];

						    try {
						    		document.getElementById(disp_flg_id).className = 'bottom_flag';
						    		$(".bottom_flag").css("color","#c8c8c8");
						    		}
						    	catch(err) {
						        
						    		}
						}
				
				
				}
				document.getElementById('action_gif').style.display= 'none';

		}
	});
	
}


function setSetectedMailUnFlagDisp() {
	
	//document.getElementById('action_gif').style.display= 'block';
	//backToMailList();
	setSetectedMailUnFlag();
}

</script>

<script type="text/javascript">
function pagiNextPage() {
	
	//alert(window.nextflg);
if( window.nextflg!="false" )
{
	
	window.nextflg="false";
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	 var lmt=pcnt+1;
	 var sml=pcnt*cntlmt;
	var all=pcnt*cntlmt;
	if(all<=allml)
		{
		noneMail();
		//alert(all);
		var s=(pcnt*cntlmt)+1;
		var e=(pcnt*cntlmt)+cntlmt;
		if(e>allml)
			{
			e=allml;
			}
		document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
		 $("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
		document.getElementById("hid_pagi_pcnt").value=lmt;
		var dtsort=document.getElementById("hid_dt_sorting").value;
		var path="getMailInbox";
		if(dtsort=="down")
			{
			path="getMailInboxDesc";
			}
	var pfldr=document.getElementById('hid_active_fldr').value;
	//document.getElementById('hid_active_fldr').value=fdrname;
	//document.getElementById(pfldr).className = "";
	//document.getElementById(fdrname).className = "active_mailbox";
	var start=''+sml;
	var end=$("#hid_mail_list_limit").val();
	var pview=document.getElementById("hid_previewPane").value;
	document.getElementById('action_gif').style.display= 'block';
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/"+path,
					data : {
						'folder' : pfldr,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						// $("#fileSystem").html(data);
						// alert(data);
						if(data=="<$expire$>")
						{
						location.href ="${pageContext.request.contextPath}/inbox";
						}
						else
							{
						$("#inb_cnt_div").html(data);
						document.getElementById('action_gif').style.display= 'none';
						window.nextflg="true";
						if($("#hid_previewPane").val()=="Vertical view")
						{
						shiftViewLeft();
						}
					    else
						{
						toggleViewPanel();
						}
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());

		            	$('.row_content').hover(
		            		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		            		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		            		         				 }
		            		   					);

		            	//getAllMailCount(pfldr);
							}
					}
				});
		
		
		}
	
	}
	
}




function pagiPrevPage() {
	
	//alert(window.prevflg);
	if( window.prevflg!="false" )
	{
		
		window.prevflg="false";
	var pcnt=parseInt(document.getElementById("hid_pagi_pcnt").value);
	var allml=parseInt(document.getElementById("hid_pagi_allmail").value);
	var cntlmt=parseInt($("#hid_mail_list_limit").val());
	 var lmt=pcnt-1;
	 var sml=(lmt*cntlmt)-cntlmt;
	var all=lmt*cntlmt;
	if(all>0)
		{
		noneMail();
		var s=(lmt*cntlmt)-cntlmt+1;
		var e=(lmt*cntlmt);
		if(e>allml)
			{
			e=allml;
			}
		document.getElementById("pagination_div").innerHTML=''+s+" - "+e+" of "+allml;
		$("#pagination_div").attr('title', ''+s+" - "+e+" of "+allml);
		document.getElementById("hid_pagi_pcnt").value=lmt;
		var dtsort=document.getElementById("hid_dt_sorting").value;
		var path="getMailInbox";
		if(dtsort=="down")
			{
			path="getMailInboxDesc";
			}
		var pfldr=document.getElementById('hid_active_fldr').value
		var start=''+sml;
		var end=$("#hid_mail_list_limit").val();
		document.getElementById('action_gif').style.display= 'block';
		var pview=document.getElementById("hid_previewPane").value;
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/"+path,
					data : {
						'folder' : pfldr,
						'start' : start,
						'end' : end,
						'pview' : pview
					},
					contentType : "application/json",
					success : function(data) {
						if(data=="<$expire$>")
						{
							location.href ="${pageContext.request.contextPath}/inbox";
						}
						else
							{
						$("#inb_cnt_div").html(data);
						document.getElementById('action_gif').style.display= 'none';
						window.prevflg="true";
						if($("#hid_previewPane").val()=="Vertical view")
						{
						shiftViewLeft();
						}
					    else
						{
						toggleViewPanel();
						}
						$(".small_image_flag").css("color",$("#hid_mail_bgColor").val());
		            	$(".new_flag_color").css("color",$("#hid_mail_bgColor").val());
		            	$(".draft_img").css("color",$("#hid_mail_bgColor").val());

		            	$('.row_content').hover(
		            		         				 function(){ $(this).css('border-left', "1px solid "+$("#hid_mail_bgColor").val()) },
		            		          				 function(){ $(this).css('border-left', "1px solid #fff") 
		            		         				 }
		            		   					);

						//getAllMailCount(pfldr);
							}
					}
				});
		}
		
		}
	
}
</script>

<script type="text/javascript">

function getMailCnt(uid) 
{
	
	//alert(uid);
	noneMailDisplay();
	$('.tag_main').css('display','block');
	$('.folder_view').css('display','block');
	 var fdrname = document.getElementById('hid_active_fldr').value;
	if(fdrname=="Drafts" || fdrname=="drafts" || fdrname=="DRAFTS")
		{

		/* 	var hid_to=document.getElementById("hid_draft_to_"+uid).value ;
			var hid_cc=document.getElementById("hid_draft_cc_"+uid).value ;
			var hid_bcc=document.getElementById("hid_draft_bcc_"+uid).value ;
			var hid_sub=document.getElementById("hid_draft_sub_"+uid).value ;
			var hid_cnt=document.getElementById("hid_draft_cnt_"+uid).value ;
			
			var attch=($( "#hid_draft_attach_status_"+uid ).val()).trim();
			var array_name = new Array();
			var array_size = new Array();
			var tmp_cnt=$( "#hid_draft_attach_cnt_"+uid ).val();
			var cnt=0;
			if(tmp_cnt!=null && tmp_cnt!="")
				{
				cnt=parseInt(tmp_cnt);
				}
			if(attch=="yes" || attch=="Yes" || attch=="YES")
				{
				
				for(i=1;i<= cnt;i++)
					{
					var flnm_id="hid_draft_attach_name_"+uid+"_"+i;
					var flsz_id="hid_draft_attach_size_"+uid+"_"+i;
					array_name[i-1]=($( "#"+flnm_id ).val());
					array_size[i-1]=($( "#"+flsz_id ).val());
					}
				
				}
			 */
			
			//alert(hid_cnt);
			document.getElementById('action_gif').style.display= 'block';
			var requestPage="${pageContext.request.contextPath}/draftToComposeOpen";
			jQuery.post(requestPage,
		                            {
		                 'draft_mail_uid': uid, 'fdrname': fdrname
		            }, 
		                    function( data ) {
		            	document.getElementById('div_for_inbox').style.display= 'none';
		            	document.getElementById('div_for_compose').style.display= 'block';
		            	document.getElementById('action_gif').style.display= 'none';
		             $( "#div_for_compose" ).html( data );
		             
		            });
			
		}
	else
		{
		
		var maildraft=$("#mailDraft_"+uid).val();
		if(maildraft=="true")
			{
			document.getElementById('action_gif').style.display= 'block';
			var requestPage="${pageContext.request.contextPath}/draftToComposeOpen";
			jQuery.post(requestPage,
		                            {
		                 			'draft_mail_uid': uid, 'fdrname': fdrname
		            				}, 
		                    function( data ) {
		            	document.getElementById('div_for_inbox').style.display= 'none';
		            	document.getElementById('div_for_compose').style.display= 'block';
		            	document.getElementById('action_gif').style.display= 'none';
		             $( "#div_for_compose" ).html( data );
		             
		            });
			}
		else
			{
	var pview=document.getElementById("hid_previewPane").value;
	document.getElementById('action_gif').style.display= 'block';
	document.getElementById('div_search_tool').style.display = "block";
	
	document.getElementById("div_hid_opt1").className="hidden_option";
	document.getElementById("div_hid_opt2").className="hidden_option";
	$("#hid_mail_disp_count").val(uid);
	// document.getElementById("chk_id_"+uid).checked = true;
	/* var str= document.getElementById("unread_inbox").innerHTML;
		var res = str.substr(1, (str.length-2));
		var num=parseInt(res);
		num--;
		if(num!=0)
			{
			res="("+ num+")";
			}
		else
			{
			res="";
			}
		*/
	if(pview=="Vertical view")
		{
		//selMailCountInPanel();
		//document.getElementById("div_"+uid).className="row_content selected_row left_view_mess";
		$("#div_"+uid).addClass("selected_row");
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getMailContentByUid",
			data : {
				'folder' : fdrname,
				'uid' : uid
			},
			contentType : "application/json",
			success : function(data) {
				if(data=="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
				else if(data.indexOf("<error>")==0)
				{
				showmsg("alert",data);
				document.getElementById('action_gif').style.display= 'none';
				}
				else if(data=="<nps>")
				{
				showmsg("alert","Message not found");
				document.getElementById('action_gif').style.display= 'none';
				}
			else
				{
				//alert(data);
				data = data.replace(/\.mail_content/g, '.mail_content_np');
				//alert(data);
				document.getElementById('hid_no_cnt').style.display= 'none';
				document.getElementById('div_left_cnt').style.display= 'block';
				
				
				document.getElementById('action_gif').style.display= 'none';
						
				//data=linkify(data)
				$("#div_left_cnt").html(data);
				$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
				//document.getElementById("unread_inbox").innerHTML=res;
				document.getElementById("div_unread_"+uid).className ="row_left left_view_con";
				$(".mail_content_1 a").attr("target","_blank");
				$(".attachment_option a").removeAttr("target");
				$(".attachment_file a").removeAttr("target");
				
				
				//var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
				var inline=parseInt($('#hid_inline_sz').val());
				if(inline>0)
					{
					
					// var i=1;
					 $('.mail_content_1 img').each(function(){
						 var str = $(this).attr('src');
					
						  if ( str.startsWith("cid:"))
				    	   {
							  str=str.replace("cid:","");
							  str = str.replace(/@/g, '_');
							  str = str.replace(/\./g, '_');
							  $(this).attr('src',$('#'+str).val());
				   		  // $(this).removeAttr('width');
						  // $(this).removeAttr('height');
				    	   //i++;
				    	   
				    	   } 
						
						 });
					
					
					}
				 
				
				
				$("#div_"+uid).removeClass("unread_rc");
				
				if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
				{
				inboxUnread()
				}
				
				try
				{
				var nm=$('#chk_id_'+uid).attr('name');
				var nm_arr=nm.split('-');
				$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
			}
			catch (e) {
				// TODO: handle exception
			}
			
			
		
			var rulesForCssText = function (styleContent) { 
			var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
			styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
			return styleElement.sheet.cssRules;
			};
			$('.mail_content_1 style').each(function(){
				var modfieddCss = '';
				var currentCss =  rulesForCssText($(this).html());
				
				$(this).html('');
				for(var i =0; i< currentCss.length;i++)
				{
					if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
						{
						var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
						modfieddCss+= media;
						}
					else
						{
						modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
						} 
				}
				$(this).html(modfieddCss);
				}); 
			}
			}
		});
		}
	else
		{
		var ur_scc="row_left";
		//document.getElementById("div_"+uid).className="row_content selected_row pading_main";
		$("#div_"+uid).addClass("selected_row");
	
		var search_st=$("#hid_open_search").val();
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getMailContentFullPageByUid",
			data : {
				'folder' : fdrname,
				'uid' : uid,
				'search_st': search_st
			},
			/*  contentType : "application/json", */
			contentType : 'application/json; charset=UTF-8',
			success : function(data) {
				var obj = jQuery.parseJSON(data);
				
				
				if(obj.success=="false" && obj.content =="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
				else if(obj.success=="false" && obj.content.indexOf("<error>")==0)
				{
				showmsg("alert",obj.content);
				document.getElementById('action_gif').style.display= 'none';
				}
				else if(obj.success=="false" && obj.content=="<nps>")
				{
				showmsg("alert","Message not found");
				document.getElementById('action_gif').style.display= 'none';
				}
				else
					{
				
					data=obj.content;
				data = data.replace(/\.mail_content/g, '.mail_content_np');
				document.getElementById('div_half_pg_disp').style.display= 'none';
				document.getElementById('div_full_pg_disp').style.display= 'block';
				document.getElementById('action_gif').style.display= 'none';
				$("#div_full_pg_disp").html(data);
				$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
				$('.mail_content').css('height',left_scollx-129);
				document.getElementById("div_unread_"+uid).className ="row_left";
				$(".mail_content_1 a").attr("target","_blank");
				$(".attachment_option a").removeAttr("target");
				$(".attachment_file a").removeAttr("target");
			
			//	var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
			var inline=parseInt($('#hid_inline_sz').val());
				if(inline>0)
					{
					
					 var i=1;
					 $('.mail_content_1 img').each(function(){
						 var str = $(this).attr('src');
					
						  if ( str.startsWith("cid:"))
				    	   {
							str=str.replace("cid:","");
							str = str.replace(/@/g, '_');
							  str = str.replace(/\./g, '_');
							$(this).attr('src',$('#'+str).val());
				   		   /* $(this).removeAttr('width');
						   $(this).removeAttr('height');
				    	   i++; */
				    	   
				    	   } 
						
						 });
					
					
					
					
					
					
					
					/* var i=1;
				var iimg=$('.mail_content_1 img').ready(function() {
				});
				var len = iimg.length;
				var j=0;
				 while (j<len) {
				       // images[i].src = images[i].alt;
				       alert(iimg[j].src);
				       var str=iimg[j].src;
				       if (str.startsWith("cid:"))
				    	   {
				    	   iimg[j].src=$('#inline_img_'+i).val();
				    	  
				    	   i++;
				    	   if(i>inline)
				    		   {
				    		   break;
				    		   }
				    	   }
				       j++;
				    } */
				
					}
				 
				 
				 
				$("#div_"+uid).removeClass("unread_rc");
				if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
				{
				inboxUnread()
				}
				try
				{
				var nm=$('#chk_id_'+uid).attr('name');
				var nm_arr=nm.split('-');
				$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
			}
			catch (e) {
				// TODO: handle exception
			}
			
			

			var rulesForCssText = function (styleContent) { 
			var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
			styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
			return styleElement.sheet.cssRules;
			};
			$('.mail_content_1 style').each(function(){
				var modfieddCss = '';
				var currentCss =  rulesForCssText($(this).html());
				
				$(this).html('');
				for(var i =0; i< currentCss.length;i++)
				{
					if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
					{
						var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
						modfieddCss+= media;
						}
					else {
						modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
						} 
					}$(this).html(modfieddCss);}); 
			try
			{
				//document.getElementById("div_"+uid).className="row_content pading_main";
				//var nwuid=obj.uid;
				//$("#hid_mail_disp_count").val(nwuid);
				//document.getElementById("div_"+nwuid).className="row_content selected_row pading_main";
				var msgno=obj.msgno;
				if(msgno!=null && msgno!="")
					{
					var mgno=parseInt(msgno);
					if(mgno-1==0)
						{
						$(".prev_"+uid).attr("name", "no");
						$(".prev_"+uid+" > div").css("border-color", "#e4e4e4");
						$(".prev_"+uid+" > div > img").css("opacity", "0.5");
						
						
						}
					var pcntt=obj.allmsgno;
					if(pcntt!="")
						{
						var noall=parseInt(pcntt.trim());
						if(mgno+1>noall)
							{
							$(".next_"+uid).attr("name", "no");
							$(".next_"+uid+" > div").css("border-color", "#e4e4e4");
							$(".next_"+uid+" > div > img").css("opacity", "0.5");
							}
						}
					}
			}
			catch (e) {
				// TODO: handle exception
			}
					}
			}
		});
		
		
		}
			}
		}
}

function findOtherMailCnt(uid, uidstatus)
{
	if(uidstatus!=null && uidstatus!="" && uidstatus!="no")
	{
	var fdrname = document.getElementById('hid_active_fldr').value;
	var pview=document.getElementById("hid_previewPane").value;
	document.getElementById('action_gif').style.display= 'block';
	/* document.getElementById('div_search_tool').style.display = "block";
	
	document.getElementById("div_hid_opt1").className="hidden_option";
	document.getElementById("div_hid_opt2").className="hidden_option"; */
	
	
		var ur_scc="row_left";
		var search_st=$("#hid_open_search").val();
		
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/getMailContentFullPageByUid",
			data : {
				'folder' : fdrname,
				'uid' : uid,
				'uidstatus':uidstatus,
				'search_st':search_st
			},
			/*  contentType : "application/json", */
			contentType : 'application/json; charset=UTF-8',
			success : function(data) {
				var obj = jQuery.parseJSON(data);
			
			
				if(obj.success=="false" && obj.content =="<$expire$>")
				{
					location.href ="${pageContext.request.contextPath}/inbox";
				}
				//else if(data.indexOf("<error>")==0)
					
				else if(obj.success=="false" && obj.content.indexOf("<error>")==0)
				{
				showmsg("alert",obj.content);
				document.getElementById('action_gif').style.display= 'none';
				}	
				else if(obj.success=="false" && obj.content=="<nps>")
				{
				showmsg("alert","Message not found");
				document.getElementById('action_gif').style.display= 'none';
				}
				else
					{
				
					data=obj.content;
				data = data.replace(/\.mail_content/g, '.mail_content_np');
				document.getElementById('div_half_pg_disp').style.display= 'none';
				document.getElementById('div_full_pg_disp').style.display= 'block';
				document.getElementById('action_gif').style.display= 'none';
				$("#div_full_pg_disp").html(data);
				$(".bottom_flag_red").css("color",$("#hid_mail_bgColor").val());
				$('.mail_content').css('height',left_scollx-129);
				document.getElementById("div_unread_"+uid).className ="row_left";
				$(".mail_content_1 a").attr("target","_blank");
				$(".attachment_option a").removeAttr("target");
				$(".attachment_file a").removeAttr("target");
			
			//	var inline=parseInt($('#hid_inline_sz').val())-parseInt($('#hid_attch_sz').val())
			var inline=parseInt($('#hid_inline_sz').val());
				if(inline>0)
					{
					
					 var i=1;
					 $('.mail_content_1 img').each(function(){
						 var str = $(this).attr('src');
					
						  if ( str.startsWith("cid:"))
				    	   {
							str=str.replace("cid:","");
							str = str.replace(/@/g, '_');
							  str = str.replace(/\./g, '_');
							$(this).attr('src',$('#'+str).val());
				   		  
				    	   } 
						
						 });
					
					
				
					}
				 
				 
				 
				 
				if(fdrname=="inbox" || fdrname=="INBOX" || fdrname=="Inbox" )
				{
				inboxUnread()
				}
				try
				{
				var nm=$('#chk_id_'+uid).attr('name');
				var nm_arr=nm.split('-');
				$('#chk_id_'+uid).attr('name',"seen-"+nm_arr[1]);
			}
			catch (e) {
				// TODO: handle exception
			}
			
			

			var rulesForCssText = function (styleContent) { 
			var doc = document.implementation.createHTMLDocument(''),styleElement = document.createElement('style');
			styleElement.textContent = styleContent;doc.body.appendChild(styleElement);
			return styleElement.sheet.cssRules;
			};
			$('.mail_content_1 style').each(function(){
				var modfieddCss = '';
				var currentCss =  rulesForCssText($(this).html());
				
				$(this).html('');
				for(var i =0; i< currentCss.length;i++)
				{
					if(currentCss[i].cssRules != undefined && currentCss[i].media != undefined)
					{
						var media ='';media += '@media ' + currentCss[i].media[0] +'{';for(var j =0; j< currentCss[i].cssRules.length;j++){media+= '.mail_content_1 '  + currentCss[i].cssRules[j].cssText;}media+='}';
						modfieddCss+= media;
						}
					else {
						modfieddCss+= '.mail_content_1 '  + currentCss[i].cssText; 
						} 
					}$(this).html(modfieddCss);}); 
			
			try
			{
				document.getElementById("div_"+uid).className="row_content pading_main";
				var nwuid=obj.uid;
				$("#hid_mail_disp_count").val(nwuid);
				document.getElementById("div_"+nwuid).className="row_content selected_row pading_main";
				var msgno=obj.msgno;
				if(msgno!=null && msgno!="")
					{
					var mgno=parseInt(msgno);
					if(mgno-1==0)
						{
						$(".prev_"+uid).attr("name", "no");
						$(".prev_"+uid+" > div").css("border-color", "#e4e4e4");
						$(".prev_"+uid+" > div > img").css("opacity", "0.5");
						}
					var pcntt=obj.allmsgno;
					if(pcntt!="")
						{
						var noall=parseInt(pcntt.trim());
						if(mgno+1>noall)
							{
							
							$(".next_"+uid).attr("name", "no");
							$(".next_"+uid+" > div").css("border-color", "#e4e4e4");
							$(".next_"+uid+" > div > img").css("opacity", "0.5");
							}
						}
					}
			}
			catch (e) {
				// TODO: handle exception
			}
					}
			}
		});
		
		
	
	}		
}

function inboxUnread() {
	
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/getUnreadMailCountInfolderDiv",
		data : {
			'fdr' : 'inbox'
			
		},
		contentType : "application/json",
		success : function(data) {
			if(data=="<$expire$>")
			{
			location.href ="${pageContext.request.contextPath}/inbox";
			}
			$("#unread_inbox").html(data);
			
			
		}
	});
	
}


function panelView(val) {
	document.getElementById("hid_previewPane").value=val;
}



function selMailCountInPanel()
{
	
	var msg="No";
	var cnt=0;
	var inputElements1 = document.getElementsByName('unseen-stared');
	for(var i=0; inputElements1[i]; ++i){
	      if(inputElements1[i].checked){
				cnt++;
	          
	      }
	}

	var inputElements2 = document.getElementsByName('unseen-unstared');
	for(var i=0; inputElements2[i]; ++i){
	      if(inputElements2[i].checked){
	    	  cnt++;
	          
	      }
	}

	var inputElements3 = document.getElementsByName('seen-unstared');
	for(var i=0; inputElements3[i]; ++i){
	      if(inputElements3[i].checked){
	    	  cnt++;
	          
	      }
	}


	var inputElements4 = document.getElementsByName('seen-stared');
	for(var i=0; inputElements4[i]; ++i){
	      if(inputElements4[i].checked){
	    	  cnt++;
	          
	      }
	}

	if(cnt>0)
		{
		msg=""+cnt;
		if(cnt==1)
			{
			var rem_uid=$("#hid_mail_disp_count").val();
			if(rem_uid!=null && rem_uid!="")
				{
			//	alert(rem_uid);
				$('#div_'+rem_uid).removeClass('selected_row');
				$("#hid_mail_disp_count").val("");
				}
			}
		$('.tag_main').css('display','block');
		$('.folder_view').css('display','block');
		}
	if(cnt==0)
		{
		$('.tag_main').css('display','none');
		$('.folder_view').css('display','none');
		}
	//alert(cnt)
	document.getElementById("span_con").innerHTML=msg;
	document.getElementById("div_left_cnt").style.display= 'none';
	document.getElementById("hid_no_cnt").style.display= 'block';
}


</script>

<script type="text/javascript">
function downloadAttach(uid,name) {
	//alert("uid="+uid);
	//alert("name="+name);
	var fdrname = document.getElementById('hid_active_fldr').value;
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/downloadMailAttachByName",
		data : {
			'folder' : fdrname,
			'uid' : uid,
			'name' : name
		},
		contentType : "application/json",
		success : function(data) {
			//alert(data)
			//document.getElementById('hid_no_cnt').style.display= 'nopenReply()one';
			//$("#div_left_cnt").html(data);
			
		}
	});
}

function backToMailList() {
	try
	{
	document.getElementById('div_half_pg_disp').style.display= 'block';
	document.getElementById('div_full_pg_disp').style.display= 'none';
	}
	catch (e) {
		// TODO: handle exception
	}
}
</script>


</body>
</html>