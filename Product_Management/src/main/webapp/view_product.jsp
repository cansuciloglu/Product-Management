<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW PRODUCT</title>
<style>
.view{
 margin-left:300px;
  margin-right:300px;
text-align:center;

}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  text-align:center;
 
}

table td, tablo th {
  border: 1px solid #ddd;
  padding: 8px;
  padding-bottom:15px;
  padding-top:15px;
  text-align:center;
}

table tr:nth-child(even){background-color: #E5E4E5;}

table tr:hover {background-color: #ddd;}

table th {
  padding-top: 15px;
  padding-bottom: 15px;
  text-align: left;
  background-color: #344260;
  color: white;
  text-align:center;
}
.button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 11px;
  margin:0px;
  padding:7px;
  transition-duration: 0.4s;
  cursor: pointer;}
  .button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
  border-radius:5px;
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}

</style>
</head>
<body>
<%@ include file="header.jsp" %> <br><br> 
<div class="view">
<%
 
String user_id=request.getParameter("user_id");
String product_id;
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from product");

try{
	
	
if(rs.next())
{    
	   
	
	out.println("<html><body><table><tr><th> Product Id</th><th>Product Name</th><th>Product Category</th><th> Product Price</th><th> Actions</th></tr>");

	do{
	
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><a href='#'><input class='button button1' value='DELETE' ></a></td></tr>");
	
	}while(rs.next());
	    out.println("</table></body></html>");
	    session.setAttribute("user_id", user_id);
	    
}

}

catch (Exception e) {	
	
	
	
}

%>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %> 
</body>
</html>