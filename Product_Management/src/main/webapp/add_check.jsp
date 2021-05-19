<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<% 
String product_id=request.getParameter("product_id");
String product_name=request.getParameter("product_name");
String product_category=request.getParameter("product_category");
String product_price=request.getParameter("product_price");
try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management","root","");
    PreparedStatement ps=con.prepareStatement("INSERT INTO product set product_id=? , product_name=? , product_category=? , product_price=?");
   
    ps.setString(1,product_id);
    ps.setString(2,product_name);
    ps.setString(3,product_category);
    ps.setString(4,product_price);
    int i=ps.executeUpdate();
    if(i>0)
    {
        response.sendRedirect("view_product.jsp");
    }
    else{
        response.sendRedirect("fail.jsp");
    }
}
catch(Exception e)
{
    e.printStackTrace();
}
    %>