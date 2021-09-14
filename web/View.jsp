<%-- 
    Document   : View
    Created on : Sep 13, 2021, 10:14:32 PM
    Author     : "Yankee"
--%>

<%@page import="Entity.entity"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hinh chu nhat</title>
        <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
        <% ArrayList<entity> e = (ArrayList<entity>) request.getAttribute("list"); %>
    </head>
    <body>
        <canvas id="myCanvas">
        </canvas>
        <script>
            var c = document.getElementById("myCanvas");
            var ctx = c.getContext("2d");
            ctx.beginPath();
            <%for (entity ent : e) {%>
            ctx.rect(<%=ent.getX()%>, <%=ent.getY()%>, <%=ent.getWidth()%>, <%=ent.getHeigh()%>);
//            ctx.rect(50, 90, 50, 40);
//            ctx.rect(20, 20, 150, 70);
//            ctx.rect(60, 30, 70, 80);
//            ctx.rect(80, 50, 60, 70);
            ctx.stroke();
            <%}%>
        </script> 
    </body>
</html>
