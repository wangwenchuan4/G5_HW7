<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Support"%>
<% Support visitor = (Support) request.getAttribute("Support"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="database.css"/>
        <title>Update a Visitor</title>
    </head>
    <body>
         <div class="wrap"> <!-- wrap -->

            <%@include file="includes/header.jsp" %> 

            <%@include file="includes/menu.jsp" %> 

            <div class="main"> <!-- main -->   


                <form name="updateForm" action="updateVisitor" method ="get">
                    <table class="table2">
                        <th colspan="2">Update a Record</th>
                        <tr>
                            <td>Customer ID:</td>
                            <td><input type="text" name="id" value="<%= visitor.getCustomerID() %>" readonly/></td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td><input type="text" name="firstName" value="<%= visitor.getFirstName() %>" /></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="lastName" value="<%= visitor.getLastName() %>" /></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text" name="email" value="<%= visitor.getFirstName() %>" /></td>
                        </tr>
                        <tr>
                            <td>Phone:</td>
                            <td><input type="text" name="phone" value="<%= visitor.getPhone() %>" /></td>
                        </tr>
                        <tr>
                            <td>Posted:</td>
                            <td><input type="text" name="posted" value="<%= visitor.getPosted() %>" /></td>
                        </tr>
                        <tr>
                            <td>Will Help:</td>
                            <td><input type="text" name="willhelp;" value="<%= visitor.getWillhelp() %>" /></td>
                        </tr>
                        <tr>
                            <td>Support:</td>
                            <td><input type="text" name="support" value="<%= visitor.getSupport() %>" /></td>
                        </tr>
                        <tr>
                            <td>Why:</td>
                            <td><input type="text" name="why" value="<%= visitor.getWhy() %>" /></td>
                        </tr>
                 
                    </table>
                    <br> 
                    <input type="reset" name="clear"   value="Clear" /> 
                    <input type="submit" name="submit"   value="Update" />  

                </form>
            </div> <!-- close main -->


            <%@include file="includes/footer.jsp" %>

        </div> 
    </body>
</html>
