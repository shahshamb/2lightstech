package com.twolights.mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

public class SendEnquiry extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public SendEnquiry() {
		super();
	}
 
	@Override
	public void destroy() {
		super.destroy();
	}

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        System.out.println("Pin Address\n"+request.getParameter("pindetail"));
		System.out.println("Inserting into mysql db.....");	
		Context initCtx;
		DataSource ds = null;
		String fromMail = request.getParameter("txtEmail");
		String toMail = "contactus@2lightstech.com";
		String name = request.getParameter("txtName");
		String compname=request.getParameter("txtcompname");
		String phone = request.getParameter("txtPhone");
		String messageBody = request.getParameter("txtComments");
		String msgSubject = "Enquiry on 2Lights.";
		String location = "";
		try {
			location = request.getParameter("txtplace") == null ? ""
					: request.getParameter("txtplace");
		} catch (NullPointerException e) {
			// TODO: handle exception
		}
		/*try {
			Context ctx  = new InitialContext();
			//Context envCtx = (Context) initCtx.lookup("java:comp/env");
			//ds = (DataSource) envCtx.lookup("jdbc/SS_JSITE_DB");
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/ss_jsite_db");
		} catch (NamingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		// Allocate and use a connection from the pool
		Connection conn = null;
		boolean insertUser = false;
        PreparedStatement pstmt = null;
        String sql = " INSERT INTO SS_JS_ENQUIRY ( " +
        		" SS_NAME, " +
        		" SS_EMAIL, " +
        		" SS_PHONE, " +
        		" SS_TEXT, " +
        		" SS_USER_LOC1, " +
        		" SS_DATE )" +
        		" VALUES( ?, ?, ?, ?, ?, CURRENT_TIMESTAMP ) ";
		try {
			conn = ds.getConnection();
			System.out.println("Got datasource connection.....");
			pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, fromMail);
            pstmt.setString(3, phone);
            pstmt.setString(4, messageBody);
            pstmt.setString(5, "Delhi");  
           // pstmt.setString(6, "2015-11-28 23:02:02");
            
            //System.out.println("insertUser statement => " + pstmt.toString());
            int status=pstmt.executeUpdate();
            //conn.commit();
            System.out.println(status);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			conn.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		*/
		
		
		System.out.println("Sending EMAIL.....");
		
		final String username = "contactus@2lightstech.com";
		final String password = "archies1983";

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Properties props = System.getProperties();
		props.put("mail.smtp.host", "smtp.zoho.com");
		props.put("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.socketFactory.fallback","false");
		props.setProperty("mail.smtp.socketFactory.port","465");
		props.put("mail.smtp.startssl.enable", "true");
		props.put("mail.smtp.auth", "true");
		

		try 
		{
		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				});

		
			

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(toMail));
			message.setRecipients(Message.RecipientType.TO, InternetAddress
					.parse(toMail));
			message.setSubject(msgSubject);
			location=location.equals("")?"":location;
			compname=compname==null?"":compname;
			message.setText("Hi 2Lights,\n\n"+messageBody + "\n\n" + "Contact : " + phone
					+ "\nMail id : " + fromMail+"\n\n\nRegards\n"+name+"\n"+location+"\n"+compname);

			Transport.send(message);
			request.setAttribute("msg",
					"Thanks, will get back to you.");
			RequestDispatcher  rd;
			
			String getHiddenValue=request.getParameter("hidden");
	         
			if(getHiddenValue.equals("enquiry"))
			 rd = request
					.getRequestDispatcher("enquiry.jsp");
			else if(getHiddenValue.equals("query"))
			 rd = request
				.getRequestDispatcher("queries-2.jsp");	
			else
				 rd = request
					.getRequestDispatcher("index.jsp");
			rd.forward(request, response);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

		out.flush();
		out.close();
		System.out.println("Sending EMAIL.....done!!");
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	@Override
	public void init() throws ServletException {
		// Put your code here
	}

}
