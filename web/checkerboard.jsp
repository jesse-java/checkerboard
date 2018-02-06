<%--
  Created by IntelliJ IDEA.
  User: jesse
  Date: 2/5/18
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Checkerboard JSP</title>
    <link href="/css/checkerboard.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="chessboard">


    <% int length = 5; %>
    <% int width = 5; %>



    <% int[][] checkerboard = new int[length][width]; %>

    <% for (int l = 0; l < length; l+=2) { %>
        <% for (int rw = 0; rw < width; rw+=2) { %>
            <% checkerboard[l][rw] = 1; %>
        <% } %>
    <% } %>

    <% for (int l2 = 1; l2 < length; l2+=2) { %>
        <% for (int rw = 1; rw < width; rw+=2) { %>
            <% checkerboard[l2][rw] = 1; %>
        <% } %>
    <% } %>


    <table border="1">

        <% for (int rows = 0; rows < length; rows++) { %>
            <tr>
               <% for (int cols = 0; cols < width; cols++) { %>
                    <% if (checkerboard[rows][cols] == 1) { %>
                <td class="white_square">  </td>
                    <% } else { %>
                <td class="black_square"> </td>
                    <% } %>
               <% } %>
            </tr>
        <% } %>



    </table>



</div>


</body>
</html>
