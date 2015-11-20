<%-- 
Title: User
Author: Divya
Date:10-26-2015
Package/ Module: User
Functionality: A web page for user to login.
--%>

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
	alert("Please Enter username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter contact no");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter email id");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter address");
	formObj.t5.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter registration no");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter aadhar no");
	formObj.t7.focus();
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
<li><a href="index.jsp">Home</a></li>
<li><a href="Admin.jsp">Admin</a></li>
<li><a href="Hospital.jsp">Hospital</a></li>
<li><a href="Doctor.jsp">Doctor</a></li>
<li class="active"><a href="User.jsp">Users</a></li>
</ul>
</div>

      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		 <form name="f1" method="post" action="AddUser" onsubmit="return validate(this);">
   <h1 align="center"><font size="" color="#FFF">User Registration</h1><br/>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=#FFF><center>"+res+"</center>");
	}%>
<table>
<tr><td><font size="" color="#FFF"><b>Username</b></td><td><input type="text" name="t1"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Password</b></td><td><input type="password" name="t2"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Contact No</b></td><td><input type="text" name="t3"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Email ID</b></td><td><input type="text" name="t4"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Address</b></td><td><input type="text" name="t5" size="60"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Registration No</b></td><td><input type="text" name="t6" value="none"/></td></tr>

<tr><td><font size="" color="#FFF"><b>Passport No</b></td><td><input type="text" name="t7" value="none"/></td></tr>
<tr><td></td><td><input type="submit" value="Add User"></td>
</td></tr>
<tr><td><font size="" color="#FFF"><a href="GuestUser.jsp"><b>Guest Users</b></a></td>
<td><font size="" color="#FFF"><a href="OtherUser.jsp"><b>Existing User?</b></a></td>
</tr>
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
