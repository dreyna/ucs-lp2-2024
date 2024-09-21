<%-- 
    Document   : main
    Created on : 16 jun 2024, 0:15:21
    Author     : Docente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
    String user = null;
    String sexo = null;
    String rol = null;
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("username") == null) {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Usted debe autenticarse...!"/>
</jsp:forward>
<%    
} else {
    user = (String) sesion.getAttribute("username");
    sexo = (String) sesion.getAttribute("sexo");
    rol = (String) sesion.getAttribute("rol");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/sjsp/header.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/sjsp/body.jspf" %>
        <div class="container">
            <h1>Bienvenido al Main</h1>
        </div>
        <%@include file="WEB-INF/sjsp/footer.jspf" %>
    </body>
</html>
<%
    }
%>