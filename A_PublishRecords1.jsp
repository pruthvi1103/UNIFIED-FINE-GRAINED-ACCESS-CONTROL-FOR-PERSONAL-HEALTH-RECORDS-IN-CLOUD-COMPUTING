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
	
try
{ 
	int pid=Integer.parseInt(request.getParameter("pid"));
	
	
	 	String query="select * from patients where id='"+pid+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		if ( rs.next() )
		{
			int	i=rs.getInt(1);
			String	s1=rs.getString(3);
			String	s2=rs.getString(4);
			String	s3=rs.getString(5);
			String	s4=rs.getString(6);
			String	s5=rs.getString(7);
			String	s6=rs.getString(8);
			String	s7=rs.getString(9);
			String  s8=rs.getString(10);
			String	s9=rs.getString(11);
			String	s10=rs.getString(12);
			String	s11=rs.getString(13);
			String	s12=rs.getString(14);
			String  s13=rs.getString(15);
			String  s14=rs.getString(2);
			String  s15=rs.getString(16);
			
		
			
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						String name = new String(Base64.encode(s1.getBytes()));
						String blood = new String(Base64.encode(s2.getBytes()));
						String disease = new String(Base64.encode(s3.getBytes()));
						String age = new String(Base64.encode(s4.getBytes()));
						String dob = new String(Base64.encode(s5.getBytes()));
						String gender = new String(Base64.encode(s6.getBytes()));
						String mobile = new String(Base64.encode(s7.getBytes()));
						String email = new String(Base64.encode(s8.getBytes()));
						String city = new String(Base64.encode(s9.getBytes()));
						String address = new String(Base64.encode(s10.getBytes()));
						String code = new String(Base64.encode(s11.getBytes()));
						String fname = new String(Base64.encode(s12.getBytes()));
						String textarea = new String(Base64.encode(s13.getBytes()));
						String owner = new String(Base64.encode(s14.getBytes()));
						String digital_sign = new String(Base64.encode(s15.getBytes()));
						
						
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String date = strDate + "   " + strTime;
						
						
						String dt = new String(Base64.encode(date.getBytes()));

						
						
						

	   PreparedStatement ps=connection.prepareStatement("insert into publish(owner,patientname,bloodgroup,disease,age,dob,gender,mobile,email,city,address,pincode,fname,contents,digital_sign,publishdate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,owner);
						ps.setString(2,name);
						ps.setString(3,blood);	
						ps.setString(4,disease);
						ps.setString(5,age);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,mobile);
						ps.setString(9,email);
						ps.setString(10,city);	
						ps.setString(11,address);
						ps.setString(12,code);
						ps.setString(13,fname);
						ps.setString(14,textarea);
						ps.setString(15,digital_sign);
						ps.setString(16,dt);
						
						int x=ps.executeUpdate();
		
			
			if(x>0)
			{
					response.sendRedirect("A_PublishRecords.jsp");
			}
			else
			{
			
			%>
<div align="center"><br/>
</div>
<p align="center">Publish Not Successful..
<p align="center"><br/>
  <a href="A_PublishRecords.jsp">Back</a>
  <%
			
			}
		
		}
}
catch (Exception e)
{
    e.printStackTrace();
}
%>
</body>
</html>