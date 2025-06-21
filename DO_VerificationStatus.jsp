<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verification Status...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {
	color: #999900;
	font-size: 15px;
}
.style11 {
	font-size: 25px;
	color: #00CC00;
}
.style27 {color: #FFCC00}
.style12 {color: #0000FF}
.style18 {color: #FF00FF}
.style85 {color: #0000FF; font-weight: bold; }
.style92 {font-size: 25px; color: #009900; }
.style94 {color: #FF00FF; font-weight: bold; }
.style95 {
	color: #000000;
	font-weight: bold;
}
.style96 {font-size: 13px}
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11 style27">Unified Fine-grained Access Control for Personal Health Records in Cloud Computing</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li class="active"><a href="DO_Login.jsp"><strong>Patients</strong></a></li>
          <li><a href="AdminLogin.jsp"><strong>Cloud Server </strong></a></li>
          <li><a href="UserLogin.jsp"><strong>Medical Staff </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="hbg">&nbsp;</div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style18"><span class="style12"><span class="style92"> Verification Status of Patient <span class="style94"><%=request.getParameter("patient")%></span>'s Details..</span></span></span></h2>
          <div class="clr"></div>
          
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
	            <%
						String owner=(String)application.getAttribute("oname");
						String patient=request.getParameter("patient");
						String email=request.getParameter("email");
						
								String keys = "ef50a0ef2c3e3a5f";
								byte[] keyValue = keys.getBytes();
								Key key = new SecretKeySpec(keyValue,"AES");
								Cipher c = Cipher.getInstance("AES");
								c.init(Cipher.ENCRYPT_MODE,key);
								String keyy = String.valueOf(keyValue);
								
								String patient1 = new String(Base64.encode(patient.getBytes()));
								String email1 = new String(Base64.encode(email.getBytes()));
							
						String s1,s2,s3,s4,s5,s6,s7;
						String ddigital="",dcontents="";
						String pdigital="",pcontents="";
						int i=0,opid=0;
						try 
						{
						   	String query="select id,digital_sign,contents from patients where patientname='"+patient+"' and email='"+email+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								opid=rs.getInt(1);
								ddigital=rs.getString(2);
								dcontents=rs.getString(3);
							}
							int ppid=0;
							String query1="select id,digital_sign,contents from publish where patientname='"+patient1+"' and email='"+email1+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
								ppid=rs1.getInt(1);
								pdigital=rs1.getString(2);
								pcontents=rs1.getString(3);
							
							String pdigital1 = new String(Base64.decode(pdigital.getBytes()));

							if(ddigital.equals(pdigital1))
							{

									%>
	</span>
									<p align="center" class="style37">&nbsp;</p>
									<p align="center" class="style37 style18 style96"><strong>This Patient's Details are Safe..</strong></p>
									<span class="style37"><br/>
									<br/>
									</span>
									<p align="center"><a href="DO_VerifyPatientsDetails.jsp" class="style10 style12"><strong>Back</strong></a></p>
									<%		
		
								}
								else
								{
								
											%>
											</span>
											<p align="center" class="style37">&nbsp;</p>
											<p align="center" class="style37 style96"><span class="style94">This Patient's Details are Not Safe.</span>.<a href="DO_Resolve.jsp?ppid=<%=ppid%>&opid=<%=opid%>" class="style95">Resolve to Maintain Privacy !! </a></p>
											<span class="style37"><br/>
											<br/>
											</span>
											<p align="center"><a href="DO_VerifyPatientsDetails.jsp" class="style12 style10"><strong>Back</strong></a></p>
											<%	
								}
			
							}
							else
							{
							
								%>
									<p align="center" class="style37">&nbsp;</p>
									<p align="center" class="style37 style18 style96"><strong>This Patient's Details Not Published..</strong></p>
									<span class="style37"><br/>
									<br/>
									</span>
									<p align="center"><a href="DO_VerifyPatientsDetails.jsp" class="style12 style10"><strong>Back</strong></a></p>
									<%		
		
							
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        
          <p align="center"><a href="AdminMain.jsp" class="style85"></a></p>
          <a href="AdminMain.jsp" class="style85"></a></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>
