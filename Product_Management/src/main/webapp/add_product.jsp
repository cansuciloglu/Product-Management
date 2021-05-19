<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD PRODUCT</title>
<style>
.button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 8px 4px;
  transition-duration: 0.4s;
  cursor: pointer;}
  .button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}
.view{
 margin-left:300px;
  margin-right:300px;
text-align:center;

}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 30%;
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
</style>
</head>
<body>
<%@ include file="header.jsp" %>  <br><br>
<div align="center">
<form action="add_check.jsp" method="post">
<table class="productTable">
<thead>
<tr>
<th colspan="2">
ADDING PRODUCT
</th>
</tr>
</thead>
<tr>
<td>Product Id</td>
<td><input type="text" name="product_id" size="20" class="ProductTextField"></td>
</tr>
<tr>
<td>Product Name</td>
<td><input type="text" name="product_name" size="20" class="ProductTextField"></td>
</tr>
<tr>
<td>Product Category</td>
<td><input type="text" name="product_category" size="20" class="ProductTextField"></td>
</tr>
<tr>
<td>Product Price</td>
<td><input type="text" name="product_price" size="20" class="ProductTextField"></td>
</tr>


</table>
<button class="button button1">ADD</button>


</form>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %> 
</body>
</html>