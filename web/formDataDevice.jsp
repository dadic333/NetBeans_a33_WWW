<%-- 
    Document   : formDataDevice
    Created on : 2.4.2019, 17:17:05
    Author     : Honza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="../css/styl.css" rel="stylesheet">
    <link href="../css/formStyl.css" rel="stylesheet">
    
    <title>JSP Page</title>
  </head>
  <body id="body-pozadi">
    <!-- Navbar start-->
    <%@include file="pices/navbar.jsp" %>
    <!-- Navbar end--> 
    
    <h1>KABELOVÁ KNIHA</h1>
    <div class="jumbotron">
    <h1>Výpis kabelů</h1>
      <div class="container">
        <table class="filmTable" >
          <tr>
           <th>Pořadí</th>
           <th>Index</th>
            <th>Název kabelu</th>
            <th>Poznámka</th>
          </tr>
          <% int i =0; %>
          <c:set var="cables" value="<%= moje.appLayer.CableBO.getAllCables() %>"/>
          <c:forEach var="cable" items="${cables}">
            <tr>  
              <td><%= i=i+1 %> </td>
              <th>${cable.id}</th>
              <td>${cable.name}</td>
              <td>${cable.note}</td>
            </tr> 
          </c:forEach>  
        </table>  
      </div>
    </div>
  </body>
</html>
