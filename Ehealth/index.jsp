<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-HEALTH CARE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
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
<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=#FFF><center>"+res+"</center>");
	}%>

			<h1>E-HEALTH CARE</h1>
			<h3><p style="background-color: white;"><font size="3" color="indigo">The objective behind this project is to develop a web application, which helps patients to get prescriptions and suggestions from their preferred choice of doctor, without actually step in to the hospital or make an appointment with doctor.</p><p style="background-color: white;"><font size="3" color="indigo">
			The users using this 'E-Healthcare' system need not go to any clinic to get the prescriptions or advice from the doctor. They simply login to our application as a registered member to raise a request for prescription from their preferred choice of doctor. In order to become registered member of our application they have to sign up with registration number provided by the hospital at the time of their visit.  Along with registered members guest users can also look out for information like health tips, information regarding common medical conditions and doctors availability. Our application also allows individual specialists and hospitals to register. As an admin of this application one can generate various statistical reports. Any user who signed in to our application able to securely signed out.</p></h3>
	
</div>


</div>


         
        </div>
       
        
      </div>
     
    </div>
    
    </div>
    </form>
 
 
  </body>
</html>
