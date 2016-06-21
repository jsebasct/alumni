<%-- 
    Document   : bienvenido
    Created on : May 27, 2016, 6:50:35 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.edu.challenge.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <h1>Pagina de bienvenida!</h1>
        <h2>
            <%
                User loged = (User)session.getAttribute("tmp_logged_user");
                if (loged != null) {
                    
                
            %>
                Bienvenido <%= loged.getLastName()%>, <%= loged.getName()%>
            
            <%
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }
            %>
        </h2>
        
        <a href="logout" >Click Me to Go Out</a>
        
    </body>
</html>
