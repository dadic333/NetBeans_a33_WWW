<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <table>
          <tr>
            <th>Pořadí</th>
            <th>Index</th>
            <th>Název kabelové hlavy</th>
            <th>Budova</th>
            <th>Poznámka</th>
            <th>Počet výstupů</th>
          </tr>
          <% int i =0; %>
          <c:set var="cables" value="<%= moje.appLayer.CableHeadBO.getAllCableHeads() %>"/>
          <c:forEach var="cable" items="${cables}">
            <tr class='edit' data-bindID="${cable.id}">  
              <td><%= i=i+1 %> </td>
              <td>${cable.id}</td>
              <td><input style="width: 100%" type='text' class='_nameCable' value='${cable.name}' /></td>
              <td><input style="width: 100%" type='text' class='_buildingCable' value='${cable.building}' /></td>
              <td><input style="width: 100%" type='text' class='_noteCable' value='${cable.note}' /></td>
              <td>${cable.outputcount}</td>
              <td><form action="editCableHead.jsp" method="post">
                  <%--<input name="id" type="text" value="${cable.id}">--%>
                  <a id='sendData' href='#' >Odeslat data</a>
                  </form>
              </td>
            </tr> 
          </c:forEach>  
        </table>  
                  
                  
             
