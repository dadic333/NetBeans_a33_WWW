<%-- 
    Document   : cableEdit
    Created on : 1.4.2019, 19:26:20
    Author     : Honza
--%>
<%@page import="org.jboss.weld.context.http.HttpRequestContext"%>
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
//  System.out.println("name = "+name);
  String building = request.getParameter("building");
//  System.out.println("building = "+building);
  String note = request.getParameter("note");
//  System.out.println("note = "+note);
  String outputCountS = request.getParameter("outputCount");
  int outputCount = Integer.parseInt(outputCountS);
//  System.out.println("output Count = "+outputCount);
  
  System.out.println("ZÍSKÁNÍ PARAMETRŮ - END");
  
  Cablehead newcab = moje.appLayer.CableHeadBO.createNewCaleHeadAndCHOutputs(name, building, note, outputCount);
  System.out.println("Vytvoření nové kabelové hlavy ÚSPĚŠNÉ.");
  
  
  HttpSession sess = request.getSession();
  sess.setAttribute("newCableHead", newcab);
  Integer val;
  val = (Integer) request.getAttribute("reqVal");
  if (val==null)
    val = 0;
  else
    val = val + 1;
  
  request.setAttribute("reqVal", val);

  System.out.println("______________newcab_____________");
  System.out.println("name= "+newcab.getName()+"; building= "+newcab.getBuilding()+"; note= "+newcab.getNote());
  response.sendRedirect("newjsp.jsp");
  //response.sendRedirect("index.jsp");
  //response.sendRedirect("formCableHead.jsp");
%>
