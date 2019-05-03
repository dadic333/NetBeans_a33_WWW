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
          
          
<%--  
          
        <% Cablehead cab = (Cablehead)request.getAttribute("newCableHead"); %>
          <tr>  
            <td><%= cab.getId()%></td>
            <td><%= cab.getName()%></td>
            <td><%= cab.getBuilding()%></td>
            <td><%= cab.getNote()%></td>
            <td><%= cab.getOutputcount()%></td>
          </tr>
           
       <% int i =0; %>   
--%>
          <c:set var="cableHead" target="Cablehead" value="<%= request.getSession().getAttribute("newCableHead") %>" />
          <tr>  
            <td>session ${cableHead.id}</td>
            <td>${cableHead.name}</td>
            <td>${cableHead.building}</td>
            <td>${cableHead.note}</td>
            <td>${cableHead.outputcount}</td>
          </tr>
          <c:set var="cable" target="Cablehead" value="<%= request.getParameter("newCableHead") %>" />
          <tr>  
            <td>request ${cable.id}</td>
            <td>${cable.name}</td>
            <td>${cable.building}</td>
            <td>${cable.note}</td>
            <td>${cable.outputcount}</td>
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
      <a href="index.jsp" />Zpět na úvodní stranu.</a>
    <p>Pokud nejsou vytvořené parametry správné, můžete <a href="formCableHead.jsp">přejít na editaci kabelu.</a></p>
    </div>
  </body>
</html>
