

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="database.css"/>
        <title>Add</title>
    </head>
    <body>
        <div class="wrap"> <!-- wrap -->

            <%@include file="includes/header.jsp" %> 

            <%@include file="includes/menu.jsp" %> 

            <div class="main"> <!-- main -->   


                <form name="addForm" action="addVisitor" method ="get">
                    <table class="table2">
                        <th colspan="2">Add a New Record</th>
                        <tr>
                            <td>First Name:</td>
                            <td><input type="text" name="firstName" value=""/></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="lastName" value=""/></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text" name="email" value=""/></td>
                        </tr>
                        <tr>
                            <td>Phone:</td>
                            <td><input type="text" name="phone" value=""/></td>
                        </tr>
                        <tr>
                            <td>Posted:</td>
                            <td><input type="text" name="posted" value=""/></td>
                        </tr>
                        <tr>
                            <td>Will Help:</td>
                            <td><input type="text" name="willhelp;" value=""/></td>
                        </tr>
                        <tr>
                            <td>Support:</td>
                            <td><input type="text" name="support" value=""/></td>
                        </tr>
                        <tr>
                            <td>Why:</td>
                            <td><input type="text" name="why" value=""/></td>
                        </tr>
                        

                     
                   
                    </table>
                    <br> 
                    <input type="reset" name="clear"   value="Clear" /> 
                    <input type="submit" name="submit"   value="Submit" />  

                </form>
            </div> <!-- close main -->


            <%@include file="includes/footer.jsp" %>

        </div> <!-- close wrap -->
    </body>
</html>
