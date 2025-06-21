<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Main Page..</title>
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
.style12 {color: #6633FF;
	font-size: 24px;
}
.style19 {color: #009900}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style26 {color: #FF00FF}
.style27 {color: #FFCC00}
.style28 {	color: #FF0000;
	font-weight: bold;
}
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
          <h2><span class="style23"><span class="style24">Welcome Data Owner </span><span class="style12"><span class="style19"><%=(String)application.getAttribute("oname")%> </span><span class="style26">..</span></span></span></h2>
          <div class="clr"></div>
          <p align="justify"><span class="style28">Attribute-based encryption has been a promising encryption technology to secure personal health records (PHRs) sharing in cloud computing. PHRs consist of the patient data often collected from various sources including hospitals and general practice centres. Different patients’ access policies have a common access subpolicy. In this paper, we propose a novel attribute-based encryption scheme for fine-grained and flexible access control to PHRs data in cloud computing. The scheme generates shared information by the common access subpolicy which is based on different patients’ access policies. Then the scheme combines the encryption of PHRs from different patients. Therefore, both time consumption of encryption and decryption can be reduced. Medical staff require varying levels of access to PHRs. The proposed scheme can also support multi-privilege access control so that medical staff can access the required level of information while maximizing patient privacy. Through implementation and simulation, we demonstrate that the proposed scheme is efficient in terms of time. Moreover, We prove the security of the proposed scheme based on security of the ciphertext-policy attribute-based encryption scheme.</span></p>
        </div>
        <div class="article">
          <p class="spec">&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="DO_Main.jsp">Home</a></li>
            <li><a href="DO_Profile.jsp">My Profile</a></li>
            <li><a href="DO_AddPatientDetails.jsp">Add Patients Details</a></li>
            <li><a href="DO_EditPatients.jsp">Edit/Delete Patients Details</a> </li>
            <li><a href="DO_VerifyPatientsDetails.jsp">Verify Patients Details and Recover </a></li>
            <li><a href="index.html">Log Out</a></li>
            <li></li>
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
