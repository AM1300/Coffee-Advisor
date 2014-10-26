<%@ page import="java.util.*" %>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Coffee Recommendation</title>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700&subset=latin,greek-ext,greek' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    
    <body>
        <h1 align="center">Coffee Recommendation</h1>

        <p class="output">
          <span>You can try</span>
          <ul class="output-list">
          <%
            List styles = (List) request.getAttribute("styles");
            Iterator it = styles.iterator();
            while(it.hasNext()) {
              out.print("<li>" + it.next() + "</li>");
            }
          %>
          </ul>
        </p>
    </body>
</html>