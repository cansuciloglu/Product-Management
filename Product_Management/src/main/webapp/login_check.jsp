<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String user_id=request.getParameter("user_id");
String user_pass=request.getParameter("user_pass");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from login where user_id='"+user_id+"' and user_pass='"+user_pass+"'");


try{
	
rs.next();
if(rs.getString("user_pass").equals(user_pass)&&rs.getString("user_id").equals(user_id))
{    
	 
	    response.sendRedirect("welcome.jsp?user_id=" + rs.getString("user_id") );
	    session.setAttribute("user_id", user_id);
}

}

catch (Exception e) {	
	response.sendRedirect("fail.jsp");
	
	
}


%>