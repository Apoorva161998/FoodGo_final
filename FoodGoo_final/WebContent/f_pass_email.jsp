<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>FORGOT_PASSWORD | FOODGO</title>
  <link rel="stylesheet" href="css/proj1.css">
  <script type="text/javascript" src="js/projFP.js"></script>
  <style>
  	.logbox{
  		height : 450px;
  	}
  </style>
</head>
<body class="bod">
  <div class="logbox">
    <img src="images/l1.png" class="user">
      <br><br>
    <h2 class="h22">Forgot Password</h2>
    <form name="myform" method="post" action="FPass" onsubmit="return validations()">
      <pre style="color: white; font-size: 17px;margin-left: 40px;">Please Enter your Email Address below &
we will send you information of password.</pre>
      <p>Email : </p><input type="Email" name="mail" placeholder="Enter your Email here" size="50">      
      <input type="submit" name="" value="Send">
      <pre  style="margin-left: 40px;">Already have account?  <a href="signin.jsp" class="su">Sign In</a>  here</pre>
    </form>
  </div>
  <br>
  </body>
</html>