<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MENU</title>
<style>
body{
margin-top:0}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
  margin-top:0px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}



.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>
</head>
<body>
<div class="header">

   <a href="welcome.jsp?user_id=<%=session.getAttribute("user_id")%>">HOME</a>
    <a href="add_product.jsp?user_id=<%=session.getAttribute("user_id")%>">ADD PRODUCT</a>
     <a href="view_product.jsp?user_id=<%=session.getAttribute("user_id")%>">VIEW PRODUCT</a>
      <a href="search.jsp?user_id=<%=session.getAttribute("user_id")%>">SEARCH PRODUCT</a>
  <div class="header-right">
    <a class="active" href="logout.jsp">LOGOUT</a>
  </div>
</div>

</body>
</html>