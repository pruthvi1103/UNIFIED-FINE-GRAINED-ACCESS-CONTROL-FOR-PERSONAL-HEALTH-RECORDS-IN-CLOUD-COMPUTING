<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patient's Record Details..</title>
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
.style72 {color: #00CCFF; font-weight: bold; font-size: 15px; }
.style74 {color: #FFFFFF}
.style93 {font-size: 15px}
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("inputTextToSave").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = document.getElementById("inputFileNameToSaveAs").value;

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}

function loadFileAsText()
{
	var fileToLoad = document.getElementById("fileToLoad").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("inputTextToSave").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
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
          <li><a href="DO_Login.jsp"><strong>Patients</strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Cloud Server </strong></a></li>
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
          <h2><span class="style18"><span class="style12"><span class="style92">Patient <span class="style18"><%=request.getParameter("patient")%></span>'s Record..</span></span></span></h2>
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
		  String name=request.getParameter("patient");
		  String email=request.getParameter("email");
		   String keyword=request.getParameter("keyword");
		  String s1="",s2="";
		  
		  
		  
		  String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						String name1 = new String(Base64.encode(name.getBytes()));
						String email1 = new String(Base64.encode(email.getBytes()));
						
						
						String content="",fname="";
		   String query="select * from publish where patientname='"+name1+"' and email='"+email1+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if( rs.next() )
					   		{
								 s1=rs.getString(3);
								 s2=rs.getString(15);
								 content = new String(Base64.decode(s2.getBytes()));
								 fname = new String(Base64.decode(s1.getBytes()));
							}%>
          <table width="664" cellspacing="2" cellpadding="2">
            <tr>
              <td width="131" height="25"><span class="style72"> </span></td>
              <td width="517"><span class="style55 style74"><strong>
                <input name="hidden" type="hidden" id="inputFileNameToSaveAs" value="<%=fname%>" />
                </input>
              </strong></span></td>
            </tr>

            <tr>
              <td height="37"><span class="style72"></span></td>
              <td><textarea name="textarea" cols="100" rows="25" id="inputTextToSave"><%=content%></textarea></td>
            </tr>
            <tr>
              <td height="46" valign="top"><label> <br />
              </label>              </td>
              <td><div align="center">
                <button onclick="saveTextAsFile()" style="width:100px;height:40px;">Download</button>
              </div>
                  <div align="center"></div>
                <div align="center"></div></td>
            </tr>
          </table>
          <p align="center"><a href="AdminMain.jsp" class="style85"></a></p>
          <table width="717" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="709"><div align="right"><a href="A_KeywordMatch1.jsp?keyword=<%=keyword%>" class="style85 style93">Back</a></div></td>
            </tr>
          </table>
        <a href="AdminMain.jsp" class="style85"></a></div>
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
