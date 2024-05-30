<%--
  Created by IntelliJ IDEA.
  User: MyHP
  Date: 29/5/2024
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MRUV</title>
</head>
<body>
<h1>Calculadora de MRUV</h1>
<form action="resultados.jsp" method="post">
    <label for="vi">Velocidad Inicial (m/s):</label>
    <input type="text" id="vi" name="vi"><br><br>
    <label for="vf">Velocidad Final (m/s):</label>
    <input type="text" id="vf" name="vf"><br><br>
    <label for="t">Tiempo (s):</label>
    <input type="text" id="t" name="t"><br><br>
    <label for="d">Distancia (m):</label>
    <input type="text" id="d" name="d"><br><br>
    <input type="submit" value="Calcular">
</form>
</body>
</html>
