package webmail.idle;

import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.io.*;

import javax.mail.*;
import javax.mail.event.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.directwebremoting.ServerContext;
import org.directwebremoting.ServerContextFactory;
import org.jivesoftware.smack.XMPPConnection;

import javax.activation.*;
import javax.annotation.Resource;

import com.example.Connections;
import com.sun.mail.imap.*;

import webmail.bean.SessionLogoutListener;
import webmail.bean.TextDecode;
import webmail.chatdwr.ReverseClass;



public class IdleMail {

	private static ServletContext servletContext;
	
	//@Resource
   // ManagedExecutorService es;
	
	
	
	 public  void inboxIdle( HttpSession hs,String host,String port,String id,String pass) {
		 try {
		
			// ExecutorService es = Executors.newCachedThreadPool();
			final Store store = Connections.imapConnectionNP(host, port, id, pass);
		 IMAPStore imapStore = (IMAPStore) store;
			
			// Store store =null;
			// Properties properties = new Properties(); 
				
			 	/*properties.put("mail.store.protocol", "imap"); 
				properties.put("mail.imap.port", port); 
				properties.put("mail.imap.starttls.enable", "false");
				properties.put("mail.event.scope", "session"); // or "application"
				properties.put("mail.event.executor", es);
				properties.setProperty("mail.imap.usesocketchannels", "true");
				Session emailSession = Session.getDefaultInstance(properties); 
				store = emailSession.getStore("imap"); */
				
				/*properties.put("mail.store.protocol", "imaps"); 
				properties.put("mail.imap.port", port); 
				properties.put("mail.imap.starttls.enable", "true"); 
				properties.put("mail.event.scope", "session"); // or "application"
				properties.put("mail.event.executor", es);
				properties.setProperty("mail.imaps.usesocketchannels", "true");
				Session emailSession = Session.getDefaultInstance(properties); 
				store = emailSession.getStore("imaps"); 
			
				store.connect(host, id, pass); 
				final IdleManager idleManager = new IdleManager(emailSession, es);*/
			
	   
	 final HttpSession ses=hs;  
			final String uid=id;
			final IMAPFolder folder =  (IMAPFolder)store.getFolder("Inbox");
	        folder.open(Folder.READ_WRITE);
	        SessionLogoutListener sll=new SessionLogoutListener(); 
			sll.setFolder((IMAPFolder)folder);
			sll.setStore(store);
			try
			{
				XMPPConnection xmppChatClass=(XMPPConnection)hs.getAttribute("xmppConnection");
				if(xmppChatClass!=null)
					sll.setXchat(xmppChatClass);
			}
			catch(Exception e)
			{
				
			}
			hs.setAttribute("sll", sll);
	        hs.setAttribute("idleFolder", folder);
	        hs.setAttribute("idleStore", store);
	        
	
	        
	folder.addMessageCountListener(new MessageCountListener() {

	            public void messagesAdded(MessageCountEvent e) {
	            	ServerContext serverContext = ServerContextFactory
							.get(servletContext);
	                System.out.println("Message Count Event Fired---"+ e.getType());
	                Message[] msgs=e.getMessages();
	                UIDFolder uf = (UIDFolder)folder;
	                String sub="";
	                String from="";
	                long luid=0l;
	                try
	                {
	                 sub=msgs[msgs.length-1].getSubject();
	                 try
	                 {
	                 sub=TextDecode.decodeUTF8Text(sub);
	                 }
	                 catch(Exception ex)
	                 {
	                	 ex.printStackTrace();
	                	 sub=msgs[msgs.length-1].getSubject();
	                 }
	                 from = InternetAddress.toString(msgs[msgs.length-1].getFrom());
	                 try
	                 {
	                	 from=TextDecode.decodeUTF8Text(from);
	                 }
	                 catch(Exception ee)
	                 {
	                	 ee.printStackTrace();
	                	 from = InternetAddress.toString(msgs[msgs.length-1].getFrom());
	                 }
	                
						try {
							luid = uf.getUID(msgs[0]);
						} catch (MessagingException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
						  System.out.println("Message Removed Event fired uid="+luid);
						 // idleManager.watch(folder);
	                 
	                }
	                catch(Exception eee)
	                {
	                	eee.printStackTrace();
	                }
	                System.out.println("Sn="+msgs.length);
	                
	                (new ReverseClass()).refreshInboxDWR(serverContext, uid, from, sub,""+luid);
	                
	             }

	            public void messagesRemoved(MessageCountEvent e) {
	            	ServerContext serverContext = ServerContextFactory.get(servletContext);
	                System.out.println("Message Removed Event fired---"+ e.getType());
	                Message[] msgs=e.getMessages();
	               long msgno=0l;
	               msgno=msgs[0].getMessageNumber();
	              
	                System.out.println("Message Removed Event fired mno="+msgno);
	                UIDFolder uf = (UIDFolder)folder;
	                String tp="uid"; 
	                long cnt=0l;
	            	long luid=0l;
	            	try
	            	{
					try {
						luid = uf.getUID(msgs[0]);
					} catch (MessagingException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					  System.out.println("Message Removed Event fired uid="+luid);
					  if(luid>0 )
					  {
						  cnt=luid;
					  }
					  else if(msgno>0)
					  {
						  cnt=msgno;
						  tp="msgno";
					  }
					  
					 // idleManager.watch(folder);
	            	}
	            	catch(Exception e1)
	            	{
	            		e1.printStackTrace();
	            	}
					  if(cnt>0)
					  {
						  (new ReverseClass()).remMailByUidDWR(serverContext, uid,tp,""+cnt);
					  }
	               
	            }
	        });
	
	

	folder.addMessageChangedListener(new MessageChangedListener() {

	            public void messageChanged(MessageChangedEvent e) {
	            	ServerContext serverContext = ServerContextFactory.get(servletContext);
	            	UIDFolder uf = (UIDFolder)folder;
	            	 Message msgs=e.getMessage();
	            	long luid=0l;
					try {
						luid = uf.getUID(msgs);
						//idleManager.watch(folder);
					} catch (MessagingException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
	               System.out.println("Message Changed Event fired uid="+luid);
	                (new ReverseClass()).changeMailByUidDWR(serverContext, uid,""+luid);
	               }
	        });
	
	
  //  idleManager.watch(folder);
	
    /*long mods= ifolder.getHighestModSeq();
   long uval= ifolder.getUIDValidity();
     List<MailEvent> events = ifolder.open(Folder.READ_WRITE, new ResyncData(uval, mods));
     if(events!=null)
     {
     for (MailEvent ev : events) {
         if (ev instanceof MessageChangedEvent) {
             System.out.println("process flag changes-----"+((MessageChangedEvent) ev).getMessageChangeType());
         } else if (ev instanceof MessageVanishedEvent) {
        	 System.out.println("process messages that were removed-----"+ ((MessageVanishedEvent) ev).getType());
         }
     }
     }*/
	//idleManager.watch(folder);
	Thread t = new Thread(new Runnable() {

        public void run() {
            try {
                while (!Thread.currentThread().isInterrupted()) {
                	Store store=(Store)ses.getAttribute("idleStore");
                	if(store==null)
                	{
                		folder.close(true);
                	//	ifolder.close(true);
                		store.close();
                		Thread.currentThread().interrupt();
                
                	}
                	else
                	{
                	if(folder.isOpen() && ses!=null)
                	{
                    folder.idle();
                   // ifolder.idle();
                 //  Thread.sleep(300000);
                    }
                	else 
                	{
                		folder.close(true);
                		//ifolder.close(true);
                		store.close();
                		Thread.currentThread().interrupt();
                		
                	}
                	}
                }
            } catch (Exception ex) {
                //Handling exception goes here
            	Thread.currentThread().interrupt();
            	try
            	{
            		folder.close(true);
            		//ifolder.close(true);
            		store.close();
            	}
            	catch(Exception e)
            	{
            		e.printStackTrace();
            	}
            }
        }
    },uid);

    t.start();
	
	//t.sleep(360000);
	
		 } 
		    catch (MessagingException ex) {
		        //ex.printStackTrace();
		    	System.out.println(ex);
		    }
		    catch (Exception ex) {
		        //ex.printStackTrace();
		    	System.out.println(ex);
		    }
	 }
	
	
	

	 public static void myinbox(String host,String port,String id,String pass,String fdr,String fr) {
		  
		  Store store = null;
		    try {
		    	store=Connections.imapConnectionNP(host, port, id, pass);
		        // Open a Folder
				Folder folder = store.getFolder(fdr);
				folder.open(Folder.READ_ONLY);
			    System.out.println("folder open");
			    Message[] msg =folder.getMessages();
			    System.out.println("length="+msg.length);
		        // Add messageCountListener to listen for new messages
			    folder.addMessageCountListener(new MessageCountAdapter() {
		        public void messagesAdded(MessageCountEvent ev) {
		            Message[] msgs = ev.getMessages();
		            System.out.println("Got " + msgs.length + " new messages");

		            // Just dump out the new messages
		            for (int i = 0; i < msgs.length; i++) {
		         //  try {
		                System.out.println("-----");
		                System.out.println("Message " +msgs[i].getMessageNumber() + ":");
		              // msgs[i].writeTo(System.out);
		           /* } catch (IOException ioex) { 
		               // ioex.printStackTrace(); 
		            	System.out.println(ioex);
		            } catch (MessagingException mex) {
		              //  mex.printStackTrace();
		            	System.out.println(mex);
		            }*/
		            }
		        }
		        });

		        // Check mail once in "freq" MILLIseconds
		        int freq = Integer.parseInt(fr);
		        boolean supportsIdle = false;
		        try {
		        if (folder instanceof IMAPFolder) {
		            IMAPFolder f = (IMAPFolder)folder;
		            f.idle();
		            supportsIdle = true;
		        }
		        } catch (FolderClosedException fex) {
		        throw fex;
		        } catch (MessagingException mex) {
		        supportsIdle = false;
		        }
		        for (;;) {
		        if (supportsIdle && folder instanceof IMAPFolder) {
		            IMAPFolder f = (IMAPFolder)folder;
		            f.idle();
		            System.out.println("IDLE done");
		        } else {
		            Thread.sleep(freq); // sleep for freq milliseconds

		            // This is to force the IMAP server to send us
		            // EXISTS notifications. 
		            folder.getMessageCount();
		        }
		        }

		    } 
		    catch (MessagingException ex) {
		        //ex.printStackTrace();
		    	System.out.println(ex);
		    }
		    catch (Exception ex) {
		        //ex.printStackTrace();
		    	System.out.println(ex);
		    }
		    }
	
}
