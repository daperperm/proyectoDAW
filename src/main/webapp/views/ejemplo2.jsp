<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.dsw.business.models.views.* "%>
<%
//Ejemplo de recogida de par�metro desde un servlet (controladora).
ejemplo1ViewModel objejemplo1View = (ejemplo1ViewModel) request.getAttribute("ejemplo2View");
%>

<table id="ejemplo1tabla"><caption><strong>Datos Recibidos en el Servidor</strong></caption>
  <tr>
    <th>Direcci�n</th>
    <th>N�mero</th>
    <th>C�digo Postal</th>
    <th>Municipio</th>
  </tr>
  <tr>
    <td><%= objejemplo1View.GetDireccion() %></td>
    <td><%= objejemplo1View.GetNum() %></td>
    <td><%= objejemplo1View.GetCp() %></td>
    <td><%= objejemplo1View.GetMunicipio() %></td>
  </tr>
</table>
