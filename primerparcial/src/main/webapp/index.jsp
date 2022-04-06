<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    ArrayList<Productos> lista=(ArrayList<Productos>)session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>
            <label>PRIMER PARCIAL TEM-742</label>
            <BR>
            <label>Nombre:Wilson Viracocha Laura</label>
            <br>
            <label>Carnet: 8377140 LP</label>
                </td>
            </tr>
        </table>
        <br>
        <br>
        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Productos</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>descripcion</th>
                <th>cantidad</th>
                <th>precio</th>
                <th>categoria</th>
                
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista!=null){
                    for(Productos item : lista){
                
            %>
                
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad()%></td>
                <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
              
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                       onclick="return confirm('Esta seguro de eliminar el registro ?');">Eliminar</a></td>
       
            </tr>
            <%
                      } 

                    }
            %>
    </body>
</html>
