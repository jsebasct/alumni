<%-- 
    Document   : destino
    Created on : Jun 19, 2016, 3:40:48 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Obtenidos</h1>

        <%
            Map<String, String> parameters = (Map) request.getAttribute("TEMP_DATA");
            for (Map.Entry<String, String> entry : parameters.entrySet()) {

                //entry.getKey();
        %>
            
        <%= entry.getKey() %> : <%= entry.getValue()%><br/>
        <%
                //entry.getValue();
            }
            request.removeAttribute("TEMP_DATA");
        %>

    </body>
</html>
