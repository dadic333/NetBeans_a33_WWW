<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page errorPage="error.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="./css/styl.css" rel="stylesheet">
    <link href="css/formStyl.css" rel="stylesheet">
    
    <title>JSP Page</title>
  </head>
  <body id="body-pozadi">
    <!-- Navbar start-->
    <%@include file="pices/navbar.jsp" %>
    <!-- Navbar end--> 
          <script type="text/javascript">
            document.write("ZAČÁTEK SKRIPTU <br />");
            
            
            
            
            document.write("<br /> KONEC SKRIPTU");
          </script>
    <hr/>
    <a href="formCableHead.jsp">Editace Kabelových hlav</a>
    <hr/>
    <a href="formDataDevice.jsp">Editace Datových prvků</a>
    <hr/>
    <a href="formJsp/formAddress.jsp">Editace Adres</a>
    <hr/>
    <a href="formJsp/formCable.jsp">Editace Klapek</a>
    <hr/>
    <a href="NewServlet">servlet: /NewServlet</a>
    
    <a href="NewServlet">servlet: /NewServlet</a>
    
    <div id="infolist">
      <h3><a href="#">Mary Adams</a></h3>
      <div>
          <img src="pix/maryadams.jpg" alt="Mary Adams">
          <ul>
              <li><h4>Vice President</h4></li>
              <li><b>phone:</b> x8234</li>
              <li><b>office:</b> 102 Bldg 1</li>
              <li><b>email:</b> m.adams@company.com</li>
          </ul>
          <br clear="all">
      </div>
    </div>
    
    <!-- footer start -->
    <%@include file="pices/footer.jsp" %>
    <!-- footer end -->
    <script defer src="./js/jquery-3.3.1.min.js"></script>
    <script defer src="./bootstrap/js/bootstrap.min.js"></script>
    
  </body>
</html>
