<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Error</title>
  </head>
  <body>
    <h1>Error</h1>
    <h3>Error tree:</h3>
    <div style="font-size: large">
      <%
        Throwable ex = pageContext.getErrorData().getThrowable();
        StackTraceElement[] stack = ex.getStackTrace();
        
        while(ex != null){
          String type = ex.getClass().getName();
          String message = ex.getMessage();
      %>
      
      <%=type%>:<b><%=message%></b><br/>
      <%
        ex = ex.getCause();
        }//while(ex != null)
      %>  
    </div>
    <h3>Stack tree:</h3>
    <div style="font-family: Courier">
      <%
        for(StackTraceElement ste: stack){
      %>
      
      <%=ste.toString()%><br/>
      
      <%
        }//for(StackTraceElement ste: stack)
      %>
    </div>
  </body>
</html>
