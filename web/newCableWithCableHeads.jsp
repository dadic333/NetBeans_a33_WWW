<%-- 
    Document   : cableEdit
    Created on : 1.4.2019, 19:26:20
    Author     : Honza
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="moje.entity.Cabheadoutput"%>
<%@page import="moje.entity.Cablehead"%>
<%@page import="java.text.DateFormat"%>
<%@page errorPage="error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");
  
  System.out.println("ZÍSKÁNÍ PARAMETRŮ - START");
 
  String name = request.getParameter("name");
  System.out.println("name = "+name);
  String building = request.getParameter("building");
  System.out.println("building = "+building);
  String note = request.getParameter("note");
  System.out.println("note = "+note);
  String outputCountS = request.getParameter("outputCount");
  int outputCount = Integer.parseInt(outputCountS);
  System.out.println("output Count = "+outputCount);
  
  System.out.println("ZÍSKÁNÍ PARAMETRŮ - END");
  
  Cablehead newcab = moje.appLayer.CableHeadBO.createNewCaleHeadAndCHOutputs(name, building, note, outputCount);
  
  request.setAttribute("newcab", newcab);
  System.out.println("Vytvoření nové kabelové hlavy ÚSPĚŠNÉ.");
  
  response.sendRedirect("newjsp.jsp");
  //response.sendRedirect("index.jsp");
  //response.sendRedirect("formCableHead.jsp");
%>
