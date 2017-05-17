<%-- 
    Document   : buscar
    Created on : 15/03/2017, 09:58:40 PM
    Author     : seg-5
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.ComentariosPOJO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="ComentariosControlador">
            Nombre: <input type="text" value="" name="nombre" placeholder="inserte su nombre">
            Inserte su comentario 
            <textarea rows="3" cols="5" name="comentario"></textarea>
            <input type="submit">
            <input type="hidden" name="action" value="buscar">
        </form>
        <%  if(session != null){
            ArrayList  comentarios = (ArrayList)session.getAttribute("comentarios");
            if(comentarios!=null){
        %>
                <table border="1">
                    <tr>
                        <th>Nombre: </th>
                        <th>Comentario: </th>
                    </tr>
                <% 
                    for(Object o : comentarios){
                        ComentariosPOJO comentario = (ComentariosPOJO) o;
                %>    
                    <tr>
                        <td><%=comentario.getNombre()%></td>
                        <td><%=comentario.getComentario()%></td>
                    </tr>
                <%  } %>    
                </table>
            <%  }
                }%>
    </body>
</html>
