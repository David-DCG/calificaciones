<%@page import="com.emergentes.calificaciones.Session"%>
<%
    Session ses = (Session) request.getAttribute("miobjses");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp"%>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= ses.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= ses.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>P1</td>
                    <td><input type="text" name="p1" value="<%= ses.getP1() %>"></td>
                </tr>
                <tr>
                    <td>P2</td>
                    <td><input type="text" name="p2" value="<%= ses.getP2() %>"></td>
                </tr>
                <tr>
                    <td>EF</td>
                    <td><input type="text" name="ef" value="<%= ses.getEf() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" values="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
