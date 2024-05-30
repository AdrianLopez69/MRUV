<%--
  Created by IntelliJ IDEA.
  User: MyHP
  Date: 29/5/2024
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultados de MRUV</title>
</head>
<body>
<h1>Resultado de MRUV</h1>
<%
    // Obtener los parámetros
    String viStr = request.getParameter("vi");
    String vfStr = request.getParameter("vf");
    String tStr = request.getParameter("t");
    String dStr = request.getParameter("d");

    //Aquí se utiliza ? : para verificar si
    // las cadenas recuperadas están vacías (isEmpty()).
        Double vi = viStr.isEmpty() ? null : Double.parseDouble(viStr);
        Double vf = vfStr.isEmpty() ? null : Double.parseDouble(vfStr);
        Double t = tStr.isEmpty() ? null : Double.parseDouble(tStr);
        Double d = dStr.isEmpty() ? null : Double.parseDouble(dStr);

        //Si vi vf y t no son null, el programa calcula la distancia
        //  usando la fórmula de la velocidad:
        if (vi != null && vf != null && t != null) {
            // Calcular distancia
            d = ((vi + vf) / 2) * t;
            double dis=d*1000;
            out.println("La distancia recorrida es: " + d + " metros");
            out.println("La distancia recorrida es: " + d + " Kilometros");
        } else if (vi != null && vf != null && d != null) {
            // Calcular tiempo
            t = (2 * d) / (vi + vf);
            double horas = t / 3600;
            out.println("El tiempo  es: " + t + " segundos");
            out.println("El tiempo  es: " + horas + " horas");
        } else if (vi != null && t != null && d != null) {
            // Calcular velocidad final
            double fkmh = vf * 3.6;
            vf = (2 * d / t) - vi;
            out.println("La velocidad final es: " + vf + " m/s");
            out.println("La velocidad final es: " + fkmh + " km/h");
        } else if (vf != null && t != null && d != null) {
            // Calcular velocidad inicial
            vi = (2 * d / t) - vf;
            double ikmh = vi * 3.6;
            out.println("La velocidad inicial es: " + vi + " m/s");
            out.println("La velocidad inicial es: " + ikmh + " km/h");
        } else {
            out.println("<p>Por favor, ingrese llene minimo 3 campos");
        }

%>
<br>
<a href="index.jsp">Volver</a>

</body>
</html>
