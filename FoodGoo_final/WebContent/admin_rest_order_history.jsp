<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Admin</title>

    <!-- Bootstrap CSS CDN -->
     <link rel="stylesheet" href="admin_css/link1.css">

    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="admin_css/navbar.css">
    <script defer src="admin_css/link2.css"></script>

    <!-- Font Awesome JS -->
    <script defer src="admin_css/link3.css"></script>

    <link href="https://fonts.googleapis.comcss?family=Lobster" rel="stylesheet">

    <link rel="stylesheet" type="textcss" href="admin_css/button.css">
    <link rel="stylesheet" type="textcss" href="admin_css/register_stud.css">
    <link rel="stylesheet" type="textcss" href="admin_css/table.css">

<style type="text/css">

#past_order {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 60%;
}

#past_order td,th
{
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#past_order tr:nth-child(even){background-color: #f2f2f2;}

#past_order tr:hover {background-color: #ddd;}

#past_order th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: rgb(89, 137, 214);
    color: white;
}
    

</style>
</head>

<body>

    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar"  class="active">
            <div class="sidebar-header">
            <a href="admin_home.jsp"><img src="images/admin_logo.jpg" style="width: 55px; height: 60px;border-radius: 50%;">
                <span style="font-size: 25px"> Hello Admin </span></a>
            </div>

            <ul class="list-unstyled components">
                <p>Foood Go!</p>
                <li>
                    <li>
                        <a href="admin_rest_list.jsp" data-toggle="collapse" aria-expanded="false">Restaurants</a>
                    </li>
                    <li>
                        <a href="admin_cust_list.jsp" data-toggle="collapse" aria-expanded="false">Customers</a>
                    </li>
                </li>
                <li>
                    <a href="signin.jsp" data-toggle="collapse" aria-expanded="false">Logout</a>
                </li>
        </ul>

        </nav>


        <!-- Page Content Holder -->
        <div id="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <button type="button" id="sidebarCollapse" class="navbar-btn active">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                        <em><h1 class="heading" style="margin-left: 400px">Food Go!</h1></em>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                             <li class="nav-item">
                                <a class="nav-link" href="signin.jsp">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="line"></div>
            <div class="line"></div>
<center>
	<h3> Order History </h3>
	        <br>
       <br><br>
        <table id="past_order">
			<tr>
                <th>ID</th>
                <th>Customer Email</th>
                <th>Delivery time</th>
                <th>Order time</th>
                <th>Total</th>
                <th>Status</th>
            </tr>
          <%@page import="java.sql.*"%>
			<%@page import="com.Food.Dao.Get_connection"%>
          <%
          Get_connection obj = new Get_connection();
          String sql="select * from orders where rest_id="+request.getParameter("rest_id");
          Connection con = obj.get();
          Statement statement =con.createStatement();
          ResultSet rs = statement.executeQuery(sql);
          while(rs.next())
          {
          %>
				<tr>
                <td style="color:blue"><a href="admin_rest_order_history_detail.jsp?order_id=<%=rs.getString("order_id")%>"><u><%=rs.getString("order_id")%></u></a></td>
                <td><%=rs.getString("cust_email")%></td>
                <td><%=rs.getString("delivery_order_time")%></td>
                <td><%=rs.getString("order_time")%></td>
                <td><%=rs.getString("order_total")%></td>
                <td><%=rs.getString("order_status")%></td>
            </tr>
          <%
          }
            %>
        </table>
</center>
</div>
</div>


    <script src="admin_css/link4.css"></script>
    <!-- Popper.JS -->
    <script src="admin_css/link5.css"></script>
    <!-- <script src="/staticadmin_css/link5.css"></script> -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
</body>
</html>

