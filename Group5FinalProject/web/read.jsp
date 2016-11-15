

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="database.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact List</title>
    </head>

    <% String table = (String) request.getAttribute("table");%>




    <body>

        <div class="wrap"> <!-- wrap -->

            <%@include file="includes/header.jsp" %> 

            <%@include file="includes/menu.jsp" %> 

            <div class="main"> <!-- main --> 

                <h1>Contact List</h1>

                <%= table%>
            </div> <!-- close main -->
            <%@include file="includes/footer.jsp" %>

        </div> <!-- close wrap -->
    </body>
</html>
