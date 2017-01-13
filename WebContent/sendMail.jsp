<%@ page language="java" import="java.util.*,javax.mail.Session,javax.mail.Message,javax.mail.MessagingException,javax.mail.PasswordAuthentication,javax.mail.Transport,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage;" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
    <%
    	final String username = "shahshamb@gmail.com";
    	final String password = "@archies1986";

    	Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
 
		Session jsession = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,password);
				}
			});
 
		try {
 
			System.out.println("Authentication done..");
			Message message = new MimeMessage(jsession);
			message.setFrom(new InternetAddress("sshah.delhi@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("shahshamb@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear Mail Crawler," +
					"\n\n No spam to my email, please!");
 
			Transport.send(message);
 
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		} 
    %>
    
  </body>
</html>
