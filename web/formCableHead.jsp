<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="css/styl.css" rel="stylesheet">
    <link href="css/formStyl.css" rel="stylesheet">
    
    <script src=""></script>
    
    <title>JSP Page</title>
  </head>
  <body id="body-pozadi">
  <!-- Navbar start-->
  <%@include file="pices/navbar.jsp" %>
  <!-- Navbar end--> 
    <div class="jumbotron">
      <h2>Výpis kabelů</h2>
      <div class="container">
        <%@include file="tables/tableCableHead.jsp" %>
      </div>
    </div>
    <div class="container">
      <h2>Založení nové kabelové hlavy</h2>
      <form action="newCableWithCableHeads.jsp" method="post">
        <p><label for="name" class="item1">Název kabelové hlavy:</label>
          <input name="name" id="name" type="text" required /></p>
        <p><label for="building" class="item1">Budova:</label>
          <input name="building" id="building" type="text" placeholder="zadej např. 'Ulice 20'" required/></p>
        <p><label for="note" class="item1">Poznámka:</label>
          <input name="note" id="note" type="text" placeholder="zadej např. '1NP, dv. 1, funkčních páry 1-30'" required/></p>
        <p><label for="outputCount" class="item1">Počet výstupů:</label>
          <input name="outputCount" id="outputCount" type="number" min="0" required/></p>
        <div class="mx-auto" style="width: 70px">  
          <button class="btn btn-odeslat" type="submit" >Vytvořit</button>
        </div> 
      </form>
    </div>
    <!-- footer start -->
    <%@include file="pices/footer.jsp" %>
    <!-- footer end -->
    <script defer src="js/jquery-3.3.1.min.js"></script>
    <script defer src="bootstrap/js/bootstrap.min.js"></script>        
  </body>
</html>
