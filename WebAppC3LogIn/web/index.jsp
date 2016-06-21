<%-- 
    Document   : index
    Created on : May 27, 2016, 6:49:38 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>

        <%
            String error = (String) request.getAttribute("tmp_login_error");
            if (error != null) {
        %>
        <h3><%=error%></h3>
        <%
                request.removeAttribute("tmp_login_error");
            }
        %>

        <form method="POST" action="login">
            <h1>Ingrese sus datos</h1>

            <label for="txtName">Nombre:</label>
            <input id="txtName" type="text" name="txtName"/>
            <br/>

            <label for="txtPassword">Password:</label>
            <input id="txtPassword" type="password" name="txtPassword"/>
            
            <br/>
            <input type="submit" value="Enviar"/>
        </form>

    </body>
</html>
