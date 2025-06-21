<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patients Registration Page..</title>
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
	color: #FFCC00;
}
.style21 {color: #0000FF; font-weight: bold; }
.style22 {color: #00CC00}
.style40 {	color: #996600;
	font-weight: bold;
}
.style41 {color: #FF00FF; font-size: 25px;}
.style43 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11">Unified Fine-grained Access Control for Personal Health Records in Cloud Computing</p>
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
          <h2 class="style41">Welcome To Patients Registration..</h2>
          <p class="style41"><img src="images/Register.png" width="300" height="163" /></p>
          <div class="clr"></div>
          <form action="UserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><span class="style43">User Name (required)</span></label>
            <p class="style43">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style43">
            <label for="password">Password (required)</label>
            </span>
            <p class="style43">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style43">
            <label for="email">Email Address (required)</label>
            </span>
            <p class="style43">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style43">
            <label for="mobile">Mobile Number (required)</label>
            </span>
            <p class="style43">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style43">
            <label for="address">Your Address</label>
            </span>
            <p class="style43">
              <textarea id="address" name="address" rows="3" cols="50"></textarea>
            </p>
            <span class="style43">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style43">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style43">
            <label for="gender">Select Gender (required)</label>
            </span>
            <p class="style43">
              <select id="s1" name="gender" style="width:480px;" class="text">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
              </select>
            </p>
            <p class="style43">Role</p>
            <p class="style43">
              <select name="Role">
                <option>Doctor</option>
                <option>Nurse</option>
                <option>Physician</option>
              </select>
            </p>
            <span class="style43">
            <label for="pincode"></label>
            <label for="location"></label>
            </span>
            <p class="style22"> <span class="style43">
              <label for="pic">Select Profile Picture (required)</label>
            </span><span class="style40"><label for="pic"></label>
              </span>
                <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p><br />
                <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
          <p align="right"><a href="index.html" class="style21">Back</a></p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <p><a href="UserRegister.jsp">Home</a></p>
              <p><a href="UserLogin.jsp">Patients Login</a></p>
            </li>
          </ul>
        </div>
        <div class="gadget"></div>
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
