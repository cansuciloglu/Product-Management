<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<style>
body{
background-color:#F5F4F6;

}
.LoginBox{
background-color:#D5DAE5;
margin-left:700px;
margin-right:700px;
margin-top:100px;
text-align:center;
padding-bottom:50px;
}
.LoginBox input{
padding-right:30px;

}
.button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
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
input[type=text] {
  width: 60%;
  padding: 12px 20px;
  margin: 4px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid #2173A5;
}
input[type=password] {
  width: 60%;
  padding: 12px 20px;
  margin: 4px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid #2173A5;
}

</style>
</head>
<body>
	<div class="LoginBox">
		
		<br>
		<br>
		<br>
		<h2>USER LOGIN</h2><br>
		<form action="login_check.jsp" method="post">
		
		<p>User Id </p>
		<input type="text" name="user_id" placeholder="Enter Your Name" required><br>
		<p>User Password </p>
		 <input type="password" name="user_pass" placeholder="**********" required><br><br>
		<input class="button button1" type="submit" value="LOGIN">
		
		
		</form>
	</div>
</body>
</html>
