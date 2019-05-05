<%@page import="moje.entity.Cablehead"%>
<%@page import="java.util.List"%>
<%@page import="moje.entity.Cabheadoutput"%>
<%
  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="css/styl.css" rel="stylesheet">
    <link href="css/formStyl.css" rel="stylesheet">

  </head>
  <body>
    <!-- Navbar start-->
    <%@include file="pices/navbar.jsp" %>
    <!-- Navbar end--> 
    <h1>Vytvořená kabelová hlava</h1>
    <div class="jumbotron">
      <h2>Výpis kabelů</h2>
      <div class="container">
        <table>
          <tr>
            <th>Index</th>
            <th>Název kabelové hlavy</th>
            <th>Budova</th>
            <th>Poznámka</th>
            <th>Počet výstupů</th>
          </tr> 
          <c:set var="cableHead" target="Cablehead" value="<%= request.getSession().getAttribute("newCableHead") %>" />
          <tr>  
            <td>${cableHead.id}</td>
            <td>${cableHead.name}</td>
            <td>${cableHead.building}</td>
            <td>${cableHead.note}</td>
            <td>${cableHead.outputcount}</td>
          </tr>
        </table>
            <%
               String x = request.getParameter("key");
               String y = (String)request.getAttribute("key");
               
            %>
            <%=x%>
            <br />
            <%=y%>
            <br />
            <c:set var="pokus" value="<%= request.getParameter("key") %>" />
            <c:out value="pokus" />
            <c:out value="key" />
            ${pokus}
      </div>
      <p><a href="index.jsp" >Zpět na úvodní stranu.</a></p>
      <p>Pokud nejsou vytvořené parametry správné, můžete <a href="formCableHead.jsp">přejít na editaci kabelových hlav.</a></p>
    </div>
    <!-- footer start -->
    <%@include file="pices/footer.jsp" %>
    <!-- footer end -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
