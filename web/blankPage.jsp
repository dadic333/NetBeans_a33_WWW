<%-- 
    Document   : blankPage
    Created on : 1.4.2019, 13:37:21
    Author     : Honza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="./css/styl.css" rel="stylesheet">
    
    <title>JSP Page</title>
  </head>
  <body id="body-pozadi">
    <!-- Navbar start-->
    <%@include file="pices/navbar.jsp" %>
    <!-- Navbar end--> 
    <h1>Hello World!</h1>
    
    
    
    <!-- footer start -->
    <%@include file="pices/footer.jsp" %>
    <!-- footer end -->
    <script defer src="./js/jquery-3.3.1.min.js"></script>
    <script defer src="./bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
