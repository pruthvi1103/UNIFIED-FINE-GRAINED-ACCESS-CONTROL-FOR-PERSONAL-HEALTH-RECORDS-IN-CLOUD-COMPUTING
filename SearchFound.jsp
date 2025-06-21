<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patients Records Found..</title>
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
.style26 {color: #FF00FF}
.style33 {color: #0000FF}
.style28 {
	font-size: 14px;
	color: #0000FF;
}
.style43 {color: #FFCC00}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style50 {font-size: 14px; color: #CC0000; }
.style69 {	color: #993300;
	font-weight: bold;
	font-size: 14px;
}
.style70 {color: #FF0000}
.style71 {font-size: 11px}
.style72 {font-size: 12px}
.style74 {color: #0000FF; font-weight: bold; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11 style43">Unified Fine-grained Access Control for Personal Health Records in Cloud Computing</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><a href="DO_Login.jsp"><strong>Patients</strong></a></li>
          <li><a href="AdminLogin.jsp"><strong>Cloud Server </strong></a></li>
          <li class="active"><a href="UserLogin.jsp"><strong>Medical Staff </strong></a></li>
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
          <h2><span class="style26">Patients Records Found..</span></h2>
          <div class="clr"></div>
          <div>
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
              <%
try 
{
  
 	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
				
		String dt1 = request.getParameter("t3").toLowerCase();
		String Rle=(String)application.getAttribute("Role1");
		
		if(dt1.equals(""))
		{
				%>
              <br/>
              <span class="style69">
              <%out.print("Please Input the Keyword to Search.");%>
            </span> </span> </p>
            <p align="left" class="style50">
              <%
		}
		else
		{
				
				int ii=1,j=0;
%>
            </p>
            <table width="931" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="29" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">PID</div></td>
              <td  width="121" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Patient Name</div></td>
              <td  width="130" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Blood Group</div></td>
              <td  width="50" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Disease</div></td>
              <td  width="58" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Age</div></td>
              <td  width="66" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">DOB</div></td>
              <td  width="65" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Gender</div></td>
              <td  width="81" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Mobile</div></td>
              <td  width="84" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Email</div></td>
              <td  width="105" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Address</div></td>
                <td  width="105" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style70 style72">Access</div></td>
              </tr>
                <%
				
		
					   String uname=(String)application.getAttribute("uname");
					   String rle=(String)application.getAttribute("Role1");
					    
						
						
					   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="";
					  /* Statement st3 = connection.createStatement();
					   String search_on="Content";
					   String query3 ="insert into search (username,keyword,dt)values('"+uname+"','"+dt1+"','"+dt+"')";
					   st3.executeUpdate (query3); */
      		
						   	String query="select * from publish"; 
						   	Statement st=connection.createStatement();
							ResultSet rs=st.executeQuery(query);
							while ( rs.next() )
							{
								int  i=rs.getInt(1);
									
											s1=rs.getString(3);
											s2=rs.getString(4);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(7);
											s6=rs.getString(8);
											s7=rs.getString(9);
										    s8=rs.getString(10);
											s9=rs.getString(11);
											s10=rs.getString(12);
											s11=rs.getString(13);
											s12=rs.getString(14);
										    s13=rs.getString(15);
										    s14=rs.getString(2);
									
											
		
									int found=0;
							
			
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						
						String name = new String(Base64.decode(s1.getBytes()));

						String email = new String(Base64.decode(s8.getBytes()));
						s1 = new String(Base64.decode(s1.getBytes()));
								
								String name1 = name.toLowerCase(); 
						
								if (name1.contains(dt1))
      							{
      								
									 found=1;
									 String Role="Doctor";
									
									String query1="select status from permission where ((username='"+uname+"' and patientname='"+name+"') and email='"+email+"' ) and status='Permitted'"; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									if(rs1.next()==true)
									{
											
									
										 s2 = new String(Base64.decode(s2.getBytes()));
										 s3 = new String(Base64.decode(s3.getBytes()));
										 s4 = new String(Base64.decode(s4.getBytes()));
										 s5 = new String(Base64.decode(s5.getBytes()));
										 s6 = new String(Base64.decode(s6.getBytes()));
										 s7 = new String(Base64.decode(s7.getBytes()));
										 s8 = new String(Base64.decode(s8.getBytes()));
										 s9 = new String(Base64.decode(s9.getBytes()));
										 s10 = new String(Base64.decode(s10.getBytes()));
										 s11 = new String(Base64.decode(s11.getBytes()));
										 s12 = new String(Base64.decode(s12.getBytes()));
										 s13 = new String(Base64.decode(s13.getBytes()));
										 
									}
									
			  	String state="";
			  	String query2="select status from permission where ((username='"+uname+"' and patientname='"+name+"' ) and email='"+email+"' )"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				if(rs2.next()==true)
				{
					state=rs2.getString(1);
					
					String Rol="";
				String mstaff="";
				
			  	String query22="select * from arole where mstaff='"+rle+"'"; 
				Statement st22=connection.createStatement();
				ResultSet rs22=st22.executeQuery(query22);
				if(rs22.next()==true)
				{
					mstaff=rs22.getString(1);
					Rol=rs22.getString(2);
					
				}
				
				
              %>
			
            <tr>
              <td height="52" align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              
			   <%if(state.equals("Permitted") & Rol.equals("All") )
				{
							String query4 ="insert into searchfound(user,keyword,patientfound,patientemail,dt)values('"+uname+"','"+dt1+"','"+s1+"','"+s8+"','"+dt+"')";
							Statement st4=connection.createStatement();
							st4.executeUpdate(query4);%> 
						<td width="121" rowspan="1" align="center" valign="middle" bgcolor="#FFFFFF" ><div align="center" class="style71 style90 style70"><strong>	
               		<a href="SearchedRecord.jsp?patient=<%=name%>&amp;id=<%=i%>">
           		    <%out.println(s1);%>(View More)
       		    </a></strong></div></td>
					   	
					<%
				}
				 if(state.equals("Permitted") & Rol.equals("Patient Details") )
				{
							String query4 ="insert into searchfound(user,keyword,patientfound,patientemail,dt)values('"+uname+"','"+dt1+"','"+s1+"','"+s8+"','"+dt+"')";
							Statement st4=connection.createStatement();
							st4.executeUpdate(query4);%> 
						<td width="121" rowspan="1" align="center" valign="middle" bgcolor="#FFFFFF" ><div align="center" class="style71 style90 style70"><strong>	
               		
           		    <%out.println(s1);%>
       		    </a></strong></div></td>
					   	
					<%
				}
					
					
				}
				
				
				
				
				else
				{
						String query41 ="insert into searchfound(user,keyword,patientfound,patientemail,dt)values('"+uname+"','"+dt1+"','"+name+"','"+email+"','"+dt+"')";
						Statement st41=connection.createStatement();
						st41.executeUpdate(query41);
						%><td width="121" rowspan="1" align="center" valign="middle" bgcolor="#FFFFFF" ><div align="center" class="style71 style90 style70"><strong>	
						 <%out.println(s1);%>
           		  		</strong></div></td>
						<%
				}
				%>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s3);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s4);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s5);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s6);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s7);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s8);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style90 style71 style70"><strong>
                <%out.println(s10);%>
              </strong></div></td>
			 
              <td height="52" align="center"  valign="middle">
			    <span class="style74">
			    <%if(state.equals("Permitted"))
				{
               		 out.println("Permitted");
				}
				else if(state.equals("Requested"))
				{
               		 out.println("Requested");
				}
				else
				{%>
			    </span>
			    <form action="AccessRequest.jsp" method="post">
                <input type="hidden" value="<%=name%>" name="name"/>
                <input type="hidden" value="<%=email%>" name="email"/>
				<input type="hidden" value="<%=dt1%>" name="t3"/>
				
				<input type="hidden" value="<%=Rle%>" name="Rle"/>
                <input type="submit" name="Submit" value="Send Request" style="width:100px;height:30px;" />
              </form><%}%></td>
              </tr>
            <%
				
						
            ii+=1;}
			
			
			if(found==0)
			{
				String query42 ="insert into unmatched(user,keyword,patientfound,patientemail,dt)values('"+uname+"','"+dt1+"','"+name+"','"+email+"','"+dt+"')";
				Statement st42=connection.createStatement();
				st42.executeUpdate(query42);
				
			}
			
			
			
			}
              
              }
           connection.close();
		   
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            <p>&nbsp;</p>
          </div>
          <p align="center"><a href="SearchPatients.jsp" class="style11 style33 style28"><strong> </strong></a></p>
          <table width="447" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="439"><div align="right"><a href="SearchPatients.jsp" class="style11 style33 style28"><strong>Back</strong></a></div></td>
            </tr>
          </table>
          <p align="center"><a href="SearchPatients.jsp" class="style11 style33 style28"></a></p>
        </div>
        <div class="article"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>
