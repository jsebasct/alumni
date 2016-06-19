<%-- 
    Document   : index
    Created on : Jan 16, 2016, 10:43:29 PM
    Author     : jscruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Index JSP</h1>
        <hr>
        
        <ul>
            <li>
                <a href="PersonRegister.jsp">Ir al formulario de registro personas</a>
            </li>
            
            <li>
                Para llamar al metodo GET
                <br>
                <a href="HolaServlet.do">Click AQUI</a>
            </li>
            
            <li>
                Para llamar al metodo POST:
                <br>
                <form action="HolaServlet.do" method="POST" >
                    <input type="submit" title="" value="Enviar"/> 
                </form>
                
            </li>
        </ul>
    </body>
</html>
