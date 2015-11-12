package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddUser extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String user=request.getParameter("t1").trim();
	String pass=request.getParameter("t2").trim();
	String contact=request.getParameter("t3").trim();
	String email=request.getParameter("t4").trim();
	String address=request.getParameter("t5").trim();
	String registration=request.getParameter("t6").trim();
	String aadhar=request.getParameter("t7").trim();
	try{
		String input[]={user,pass,contact,email,address,registration,aadhar};
		String msg=DBCon.addUser(input);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("User.jsp?t1=User details added "+user);
			rd.forward(request, response);
		}else{
			response.sendRedirect("User.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
