<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker Profile..</title>
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
.style1 {font-size: 25px}
.style33 {color: #0000FF}
.style34 {color: #42ac1f}
.style36 {font-size: 14px}
.style36 {color: #00CCFF}
.style9 {color: #FF0000; font-weight: bold; }
.style28 {font-size: 13px}
.style43 {color: #FFCC00}
.style44 {color: #6666FF}
.style45 {color: #FFFF00}
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
          <li class="active"><a href="AdminLogin.jsp"><strong>Cloud Server </strong></a></li>
          <li><a href="UserLogin.jsp"><strong>Medial Staff </strong></a></li>
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
          <h2><span class="style33"><span class="style1"><span class="style26">Attacker</span> <span class="style34"><%=request.getParameter("attacker")%><span class="style26">'s</span></span> <span class="style26">Profile</span></span><span class="style26">..</span></span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=request.getParameter("attacker");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
            <tr>
              <td width="237" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?value=<%="user"%>&id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="119" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style45" style="margin-left:20px;">
                  <div align="left"><strong>E-Mail</strong></div>
              </div></td>
              <td  width="155" valign="middle" height="40" style="color:#000000;"><div align="left" class="style9 style10 style44" style="margin-left:20px;">
                  <%out.println(s1);%>
              </div></td>
            </tr>
            <tr>
              <td  width="119" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style45" style="margin-left:20px;">
                  <div align="left"><strong>Mobile</strong></div>
              </div></td>
              <td  width="155" valign="middle" height="40"><div align="left" class="style9 style10 style44" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="119" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style45" style="margin-left:20px;">
                  <div align="left"><strong>Address</strong></div>
              </div></td>
              <td  width="155" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style44" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <tr>
              <td  width="119" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style45" style="margin-left:20px;">
                  <div align="left"><strong>Date of Birth</strong></div>
              </div></td>
              <td  width="155" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style44" style="margin-left:20px;">
                  <%out.println(s5);%>
              </div></td>
            </tr>
            <tr>
              <td   width="119" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style45" style="margin-left:20px;">
                  <div align="left"><strong>Status</strong></div>
              </div                        ></td>
              <td  width="155" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style9 style10 style44" style="margin-left:20px;">
                    <%out.println(s4);%>
              </div></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right">&nbsp;</p>
          <p align="right"><a href="A_AllAttackers.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
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
