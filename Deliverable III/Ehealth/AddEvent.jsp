<%-- 
Title: AddEvent
Author: Surya
Date:10-17-2015
Package/ Module: Admin
Functionality:vProviding the capability to announce an event.
Description: Admin will announce by providing the details of the event and it's date.
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
	alert("Please Enter event details");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please choose event date");
	formObj.t2.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
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
<li><a href="HospitalRequest.jsp">Hospital Request</a></li>
<li><a href="DoctorRequest.jsp">Doctor Request</a></li>
<li><a href="ViewHomeDelivery.jsp">Home Delivery</a></li>
<li><a href="DeleteProfile.jsp">Delete Profile</a></li>
<li class="active"><a href="AddEvent.jsp">Broadcast Event</a></li>
<li><a href="Logout.jsp">Logout</a></li>

</ul>

      
<div id="content" style="background-color:;height:400px;width:900px;float:left;">
<center>
		 <form name="f1" method="post" action="AddEvent" onsubmit="return validate(this);">
   <h1 align="center"><font size="" color="#FFF">Add Event Form</h1><br/>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=#FFF><center>"+res+"</center>");
	}%>
<table>

<tr><td><b>Event Details</b></td><td><textarea name="t1" rows="8" cols="70"></textarea></td></tr>

<tr><td><b>Appointment Date</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="20" id="demo1"/>
		  <a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span>
			 </td></tr>


<tr><td></td><td><input type="submit" value="Add Event"></td>
</td></tr>
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
