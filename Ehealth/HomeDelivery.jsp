<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
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
	alert("Please Enter medicine details");
	formObj.t2.focus();
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
		<li class="active"><a href="MemberPrescription.jsp">Request Prescription</a></li>
		<li class="active"><a href="ViewPrescription.jsp">View Prescription</a></li>
		
		<li class="active"><a href="HomeDelivery.jsp">Home Delivery</a></li>
<li><a href="Logout.jsp">Logout</a></li>

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
		 <form name="f1" method="post" action="HomeDelivery" onsubmit="return validate(this);">
   <h1 align="center"><font size="" color="#FFF">Home Delivery Form</h1><br/>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=#FFF><center>"+res+"</center>");
	}%>
<table>
<tr><td><font size="" color="#FFF"><b>Username</b></td><td><input type="text" name="t1" value="<%=session.getAttribute("user").toString()%>"/></td></tr>

<tr><td><b>Medicine Details</b></td><td><textarea name="t2" rows="7" cols="60"></textarea></td></tr>


<tr><td></td><td><input type="submit" value="Submit"></td>
</td></tr></table>
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
