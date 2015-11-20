package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.File;
import java.io.FileOutputStream;
import java.io.BufferedOutputStream;
public class DBCon{
    private static Connection con;
public static Connection getCon()throws Exception {
    try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/ehealthcare","root","root");
	}catch(Exception e){
		e.printStackTrace();
	}
	return con;
}
public static String deleteDoctor(String name)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("delete from adddoctor where username=?");
	stat.setString(1,name);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String deleteHospital(String name)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("delete from addhospital where username=?");
	stat.setString(1,name);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String approveDoctor(String name)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("update adddoctor set status=? where username=?");
	stat.setString(1,"Approved");
	stat.setString(2,name);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String sendPrescription(String name,String prescription)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("update registerprescription set prescription=? where username=? and prescription=?");
	stat.setString(1,prescription);
	stat.setString(2,name);
	stat.setString(3,"none");
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String RegisterPrescription(String input[])throws Exception{
    String msg="no";
	java.util.Date d1 = new java.util.Date();
	java.sql.Timestamp d2 = new java.sql.Timestamp(d1.getTime());
	con = getCon();
	Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from registerprescription where username='"+input[0]+"' and prescription='none'");
    if(rs.next()){
        PreparedStatement stat=con.prepareStatement("update registerprescription set symptoms=?,datetime=?,doctor_name=? where username=? and prescription=?");
		stat.setString(1,input[1]);
		stat.setTimestamp(2,d2);
		stat.setString(3,input[2]);
		stat.setString(4,input[0]);
		stat.setString(5,"none");
		int i=stat.executeUpdate();
		stat.close();
		if(i > 0)
			msg = "success";
    }else{
		PreparedStatement stat=con.prepareStatement("insert into registerprescription values(?,?,?,?,?)");
		stat.setString(1,input[0]);
		stat.setString(2,input[2]);
		stat.setString(3,input[1]);
		stat.setTimestamp(4,d2);
		stat.setString(5,"none");
		int i=stat.executeUpdate();
		stat.close();
		if(i > 0)
			msg = "success";
	}
	rs.close();stmt.close();con.close();
    return msg;
}
public static String addHomeDelivery(String name,String medicines)throws Exception{
    String msg="no";
	java.util.Date d1 = new java.util.Date();
	java.sql.Timestamp d2 = new java.sql.Timestamp(d1.getTime());
	con = getCon();
    PreparedStatement stat=con.prepareStatement("insert into homedelivery values(?,?,?,?)");
	stat.setString(1,name);
	stat.setString(2,medicines);
	stat.setTimestamp(3,d2);
	stat.setString(4,"pending");
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String addEvent(String event,String date)throws Exception{
    String msg="no";
	java.util.Date d1 = new java.util.Date(date);
	java.sql.Timestamp d2 = new java.sql.Timestamp(d1.getTime());
	con = getCon();
    PreparedStatement stat=con.prepareStatement("insert into addevent values(?,?)");
	stat.setString(1,event);
	stat.setTimestamp(2,d2);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String approveHospital(String name)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("update addhospital set status=? where username=?");
	stat.setString(1,"Approved");
	stat.setString(2,name);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String updateHomeDelivery(String name)throws Exception{
    String msg="no";
	con = getCon();
    PreparedStatement stat=con.prepareStatement("update homedelivery set status=? where username=?");
	stat.setString(1,"Delivered");
	stat.setString(2,name);
    int i=stat.executeUpdate();
	if(i > 0)
		msg = "success";
	stat.close();con.close();
    return msg;
}
public static String addUser(String[] input)throws Exception{
    String msg="no";
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from users where username='"+input[5]+"'");
    if(rs.next()){
        msg = "Given username already exists";
    }
	PreparedStatement stat=con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setString(3,input[2]);
	stat.setString(4,input[3]);
	stat.setString(5,input[4]);
	stat.setString(6,input[5]);
	stat.setString(7,input[6]);
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg = "success";
	rs.close();stmt.close();con.close();
    return msg;
}
public static String addHospital(String[] input)throws Exception{
    String msg="no";
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from addhospital where username='"+input[5]+"'");
    if(rs.next()){
        msg = "Given username already exists";
    }
	PreparedStatement stat=con.prepareStatement("insert into addhospital values(?,?,?,?,?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setString(3,input[2]);
	stat.setString(4,input[3]);
	stat.setString(5,input[4]);
	stat.setString(6,input[5]);
	stat.setString(7,input[6]);
	stat.setString(8,"pending");
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg = "success";
	rs.close();stmt.close();con.close();
    return msg;
}
public static String addDoctor(String[] input)throws Exception{
    String msg="no";
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from adddoctor where username='"+input[5]+"'");
    if(rs.next()){
        msg = "Given username already exists";
    }
	PreparedStatement stat=con.prepareStatement("insert into adddoctor values(?,?,?,?,?,?,?,?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setString(3,input[2]);
	stat.setString(4,input[3]);
	stat.setString(5,input[4]);
	stat.setString(6,input[5]);
	stat.setString(7,input[6]);
	stat.setString(8,input[7]);
	stat.setString(9,input[8]);
	stat.setString(10,input[9]);
	stat.setString(11,"pending");
	int i=stat.executeUpdate();
	stat.close();
	if(i > 0)
		msg = "success";
	rs.close();stmt.close();con.close();
    return msg;
}

public static String login(String input[])throws Exception{
    String msg="invalid login";
    con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select usertype from addemp where username='"+input[0]+"' and password='"+input[1]+"'");
    if(rs.next()){
        msg = rs.getString(1);
    }
    return msg;
}
public static String hospitalLogin(String user,String pass)throws Exception{
    String msg="invalid login";
    con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from addhospital where username='"+user+"' and password='"+pass+"'");
    if(rs.next()){
        msg = "success";
    }
    return msg;
}
public static String doctorLogin(String user,String pass)throws Exception{
    String msg="invalid login";
    con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from adddoctor where username='"+user+"' and password='"+pass+"'");
    if(rs.next()){
        msg = "success";
    }
    return msg;
}
public static String userLogin(String user,String pass)throws Exception{
    String msg="invalid";
    con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select registration_no,aadhar_no from users where username='"+user+"' and password='"+pass+"'");
    if(rs.next()){
		String reg = rs.getString(1);
		String aadhar = rs.getString(2);
		if(!reg.equals("none") && !aadhar.equals("none"))
			msg = "MemberScreen.jsp?t1=Welcome "+user;
		else
			msg = "RegisterScreen.jsp?t1=Welcome "+user;
	}
    return msg;
}
}
