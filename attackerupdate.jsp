<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="java.security.*,java.security.DigestInputStream,java.math.BigInteger"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {
	color: #FF00FF;
	font-weight: bold;
}
.style3 {
	color: #000000;
	font-weight: bold;
}
.style5 {
	font-size: 14px;
	color: #FF00FF;
	font-weight: bold;
}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <div align="center" class="style1">
                                <span class="style2">
                                <%

  try{      
        
			String contents = request.getParameter("textarea");
			int id = Integer.parseInt(request.getParameter("id"));
			
			String user = (String)application.getAttribute("uname");
			
			/*application.setAttribute("p_Name",p_Name);
		application.setAttribute("categorie",categorie);
		application.setAttribute("p_model_no",p_model_no);	
		application.setAttribute("keyword",keyword);			
*/
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
 			String keyWord = "5765586965748666502846";
			keyWord = keyWord.substring(0, 16);
			byte[] keyValue = keyWord.getBytes();
			Key key = new SecretKeySpec(keyValue, "AES");
			Cipher c2 = Cipher.getInstance("AES");
			c2.init(Cipher.ENCRYPT_MODE, key);
		
			
			
			String namefile="filename.txt";
				PrintStream p=new PrintStream(new FileOutputStream("C:\\Tomcat 6.0\\"+namefile+"/"));
				p.print(new String(contents));
				
				
				MessageDigest md=MessageDigest.getInstance("SHA1");
				FileInputStream fis11=new FileInputStream("C:\\Tomcat 6.0\\"+namefile+"/");				
				DigestInputStream dis1=new DigestInputStream(fis11,md);
				BufferedInputStream bis1=new BufferedInputStream(dis1);				
				while(true)
				{
				
					int b1=bis1.read();
					if(b1==-1)
					
						break;
				}
					
				
				BigInteger bi1=new BigInteger(md.digest());
				String spl1=bi1.toString();
				String h1=bi1.toString(16);
				
					String d_check_sign="";
					String d_check_content="";	
					
						String patientname="";
					String str5 = "select digital_sign,patientname from publish where id='"+id+"'";
					Statement st5=connection.createStatement();
					ResultSet rs5 = st5.executeQuery(str5);
					if(rs5.next())
					{
						
						d_check_sign=rs5.getString(1);
						patientname=rs5.getString(2);
					}	
						
						String sign = new String(Base64.decode(d_check_sign.getBytes()));
						String patientname1 = new String(Base64.decode(patientname.getBytes()));
				
					String d_h1 = new String(Base64.encode(h1.getBytes()));
					String d_contents = new String(Base64.encode(contents.getBytes()));
						int a=0,b=0,as=0;	
					if(sign.equals(h1))
					{
					
					
								 out.print("Patient Details Not Attacked!!..");
								%>
                                </span><br/>
                                  <br/>
                                </div>
                                <p align="center"><a href="attacker.jsp" class="style3">Back</a></p>
								<div align="center">
								  <p><span class="style5">
							      <%
					}
					else
					{
									
				
				
		Statement st1=connection.createStatement();
   		String strQuery1 = "update publish set digital_sign='"+d_h1+"',contents='"+d_contents+"' where id='"+id+"'";
  		a=st1.executeUpdate(strQuery1);
		
				
						
						/*String str21 = "delete * from attacker where username='"+user+"' and patientname='"+patientname1+"'";
						Statement st21=connection.createStatement();
						as = st21.executeUpdate(str21);
						/*if(rs21.next())
						{
							/*out.print("Patient  ..");
								
								String strQuery51 = "update attacker set digital_sign='"+h1+"',contents='"+contents+"',dt='"+dt+"' where patientname='"+patientname1+"' and username='"+user+"'";
								Statement st51=connection.createStatement();
								c=st51.executeUpdate(strQuery51);*/
								
								/*if(as>0)
								{*/
								/*}
				
						else
						{*/
							String str8 = "insert into attacker (username,patientname,digital_sign,contents,dt) values ('"+user+"','"+patientname1+"','"+h1+"','"+contents+"','"+dt+"')";							
							b=connection.createStatement().executeUpdate(str8);
							
						/*	String str2 = "insert into attacker (title,category,user,fname,dt,digital_sign,keyword,url,count) values('"+title+"','"+categorie+"','"+user+"','"+fname+"','"+dt+"','"+h1+"','"+keyword+"','"+url+"','"+z+"')";
						 b=connection.createStatement().executeUpdate(str2);*/
							

						//	}
				}
			
					
				//	if(((a>0)&&(b>0))||((a>0)&&(c>0)))
						if((a>0)&&(b>0))
					{
							out.print("Patient Details Attacked Successfully..");
							%>
							            </span><br/>
						            <br/>
							            </p>
							</div>
							<p align="center"><a href="attacker.jsp" class="style3">Back</a></p>
					
							<%
					}
					
 
  }
  catch (Exception e){
    out.print(e);
  }
%>
								  
                                </div>
</body>
</html>