

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        -->
        
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
