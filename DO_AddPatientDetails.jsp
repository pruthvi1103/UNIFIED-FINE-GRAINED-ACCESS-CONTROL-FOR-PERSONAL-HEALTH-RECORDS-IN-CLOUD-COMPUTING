<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Patient Details..</title>
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
.style28 {font-size: 13px}
.style43 {color: #FFCC00}
.style48 {font-size: 12px}
.style40 {color: #996600;
	font-weight: bold;
}
.style50 {font-size: 11px; font-weight: bold;}
.style51 {font-size: 14px}
.style53 {font-size: 13px; font-weight: bold; color: #FFFF00; }
.style54 {color: #FFFF00}
-->
</style>
<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
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
        <p align="center" class="style11 style43">Unified Fine-grained Access Control for Personal Health Records in Cloud Computing</p>
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
          <h2><span class="style33"><span class="style1"><span class="style26">Add Patient Details.. </span></span><span class="style26"></span></span></h2>
          <div class="clr"></div>
          <form action="DO_AddPatientStatus.jsp" method="post"  name="form1" id="form1" enctype="multipart/form-data">
          <table width="585" border="0" align="center">
              <tr>
                <td width="131" height="49" bgcolor="#FF0000"><p align="left" class="style53"><span class="style50">(<span class="style48">*</span>=Required)</span></p>
                <p class="style53">Patient Name<span class="style51">*</span></p></td>
                <td width="444"><label> <br />
                  <input name="name" type="text" size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Blood Group<span class="style51">*</span></span></td>
                <td><p>
                    <input type="text" name="blood" size="40" />
                </p></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Disease<span class="style51">*</span></span></td>
                <td><p>
                    <input type="text" name="disease" size="40" />
                </p></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient Age<span class="style51">*</span></span></td>
                <td><label>
                  <input type="text" name="age" size="40"/>
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient DOB<span class="style51">*</span></span></td>
                <td><label>
                  <input type="text" name="dob" size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53"> Patient Gender<span class="style51">*</span></span></td>
                <td><label><span class="style40">
                  <select id="s1" name="gender" style="width:280px;" class="text">
                    <option>--Select--</option>
                    <option>Male</option>
                    <option>Female</option>
					<option>Other</option>
                  </select>
                </span></label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient Mobile<span class="style51">*</span></span></td>
                <td><label>
                <input type="text" name="mobile" size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient Email<span class="style51">*</span> </span></td>
                <td><label>
                <input type="text" name="email" size="40"/>
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient City<span class="style51">*</span></span></td>
                <td><label>
                <input type="text" name="city"size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Patient Address<span class="style51">*</span></span></td>
                <td><label>
                <input type="text" name="address"size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Pin Code<span class="style51">*</span> </span></td>
                <td><label>
                <input type="text" name="code" size="40"/>
                </label></td>
              </tr>

              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">Select  Document<span class="style51">*</span></span></td>
                <td><input type="file" id="file" name="file"  onchange="loadFileAsText()" size="29" /></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><span class="style53">File Name<span class="style51">*</span> </span></td>
                <td><label> 
                      <input type="text" name="fname" size="40" />
                </label></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000">&nbsp;</td>
                <td><label>
                  <textarea name="textarea" id="textarea" cols="50" rows="18"></textarea>
                </label></td>
              </tr>

              <tr>
                <td height="47"><label></label></td>
                <td><label>
                  <input type="submit" name="Submit" value="Submit" />
                  <input type="reset" name="Submit2" value="Reset" />
                </label></td>
              </tr>
            </table>
          </form>
          <p align="right">&nbsp;</p>
          <p align="right"><a href="DO_Main.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="DO_AddPatientDetails.jsp">Home</a></li>
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
