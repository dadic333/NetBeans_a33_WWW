<%-- 
    Document   : newjsp
    Created on : 11.4.2019, 17:11:25
    Author     : Honza
--%>
<%@page import="moje.entity.Cablehead"%>
<%@page import="java.util.List"%>
<%@page import="moje.entity.Cabheadoutput"%>
<%request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>Vytvořená kabelová hlava</h1>
    <div class="jumbotron">
      <h2>Výpis kabelů</h2>
      <div class="container">
        <table>
          <tr>
<%--            <th>Pořadí</th>  --%>
            <th>Index</th>
            <th>Název kabelové hlavy</th>
            <th>Budova</th>
            <th>Poznámka</th>
            <th>Počet výstupů</th>
          </tr>
<%--          <% int i =0; %>   --%> 
          <c:set var="cableHead" value="<%= request.getAttribute("newcab") %>" />
          <tr>  
            <td>${cableHead.id}</td>
            <td>${cableHead.name}</td>
            <td>${cableHead.building}</td>
            <td>${cableHead.note}</td>
            <td>${cableHead.outputcount}</td>
          </tr>
        </table>
            <%--
          <table>
          <td>${cableHead.cabheadoutputList}</td>
          <%
            Cablehead cabH = (Cablehead)request.getAttribute("newcab");
            List<Cabheadoutput> outsputs = cabH.getCabheadoutputList();
            
          %>
          <%!  %>
          <c:set var="outputs" value="<" />
          <c:forEach var="output" items="${outputs}">
          <% int i =0; %>
          <tr>  
            <td><%= i=i+1 %> </td>  
            <td>${cable.id}</td>
            <td>${cable.name}</td>
            <td>${cable.note}</td>
            <td>${cable.building}</td>
            <td>${cable.outputcount}</td>
            <td><form action="editCableHead.jsp" method="post">
                <input name="id" type="text" value="${cable.id}">
                <input type="submit">
                </form>
            </td>
          </tr> 
          </c:forEach> 
        </table>  
            --%>
      </div>
    </div>
  </body>
</html>
