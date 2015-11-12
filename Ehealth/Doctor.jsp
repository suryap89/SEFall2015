<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-HEALTH CARE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter hospital name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter speciality");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter work experience");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter qualification");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter contact no");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter email id");
	formObj.t7.focus();
	return false;
	}
	if(formObj.t8.value.length==0)
	{
	alert("Please Enter address");
	formObj.t8.focus();
	return false;
	}
	if(formObj.t9.value.length==0)
	{
	alert("Please Enter username");
	formObj.t9.focus();
	return false;
	}
	if(formObj.t10.value.length==0)
	{
	alert("Please Enter password");
	formObj.t10.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
</head>
<body>

<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="#"><span><center>E-HEALTH CARE SYSTEM</center></span><small></small></a></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
       <ul>
<li class="active"><a href="index.jsp">Home</a></li>
<li><a href="Admin.jsp">Admin</a></li>
<li><a href="Hospital.jsp">Hospital</a></li>
<li><a href="Doctor.jsp">Doctor</a></li>
<li><a href="User.jsp">Users</a></li>
</ul>
</div>
<div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
        <div class="mainbar">
          <div class="article">
            <h2><span></span></h2>
            
             
            
          </div>
          
           
        </div>
      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		 <form name="f1" method="post" action="AddDoctor" onsubmit="return validate(this);">
   <h1 align="center"><font size="" color="#FFF">Add Doctor Form</h1><br/>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=#FFF><center>"+res+"</center>");
	}%>
<table>
<tr><td><font size="" color="#FFF"><b>Doctor Name</b></td><td><input type="text" name="t1"/></td></tr>

<tr><td><b>Speciality</b></td><td><textarea name="t2" rows="5" cols="50"></textarea></td></tr>

<tr><td><b>Work Experience</b></td><td><textarea name="t3" rows="5" cols="50"></textarea></td></tr>

<tr><td><font size="" color="#FFF"><b>Qualification</b></td><td><input type="text" name="t4"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Gender</b></td><td><select name="t5">
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</td></tr>


<tr><td><font size="" color="#FFF"><b>Contact No</b></td><td><input type="text" name="t6"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Email ID</b></td><td><input type="text" name="t7"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Address</b></td><td><input type="text" name="t8" size="60"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Username</b></td><td><input type="text" name="t9"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Password</b></td><td><input type="password" name="t10"/></td></tr>
<tr><td></td><td><input type="submit" value="Add Doctor"></td>
</td></tr>
<tr><td><font size="" color="#FFF"><a href="DoctorLogin.jsp"><b>Existing User</b></a></td></tr>
</table>
</html>

	
			</center>
</div>


</div>


         
        </div>
       
        
      </div>
     
    </div>
    
    </div>
    </form>
 
 
  </body>
</html>
