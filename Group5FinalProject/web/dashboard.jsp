

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="bootstrap.css">

        <title>Group 5 Final</title>
    </head>
    <body>
        <div class="container"> <!-- wrap -->



            <%@include file="includes/header.jsp"%>


            <%@include file="includes/adminmenu.jsp" %> 


            <div class="row">
                <div class="col-xs-12">
                    <center><h2>Full Contact List</h2></center>
                        <jsp:include page="/adminfull"/>
                        <% String full = (String) request.getAttribute("table");%>
                        <%= full%>              
                </div>
            </div>


            <div class="row">
                <div class="col-md-6 col-xs-6">
                    <center><h2>Mailing List</h2></center>
                        <jsp:include page="/adminmail"/>
                        <% String mail = (String) request.getAttribute("table");%>
                        <%= mail%>
                </div>
                <div class="col-md-6 col-xs-6">
                    <center><h2>Mailing List</h2></center>
                        <jsp:include page="/adminmail"/>
                        <% String volunteer = (String) request.getAttribute("table");%>
                        <%= volunteer%>
                </div>



                <%@include file="includes/footer.jsp" %>

            </div> <!-- close wrap -->
    </body>

</html>
