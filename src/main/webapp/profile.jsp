<%-- 
    Document   : welcome
    Created on : 24-Jun-2019, 6:54:01 PM
    Author     : kaushik
--%>

<%@page import="java.util.List"%>
<%@page import="com.student.Student"%>
<%@page import="com.studentDao.StudentDao"%>
<%@page import="com.studentDao.StudentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/profile.css" rel="stylesheet">
        <script src="js/profile.js"></script>
        <title>Profile</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>
        <%
                
              
            List<Student> list = StudentDao.getAllRecords();
            request.setAttribute("list", list);
                      
//            session.getAttribute("txtemail");
            
            response.setHeader("Cache-Control", "no-cache , no-store , no-revalidate");
            
            if (session.getAttribute("username") == null) {
                response.sendRedirect("loginForm.jsp");
            }

        %>


        <table>
            <tr>
                <td colspan="3">
                    <div class="name">${username}</div>
                </td>
            </tr>
            <tr>
                <td class="details-td">
                    <div class="label">Phone</div> : <div class="phone">+91 9876 543 210</div>
                    <br><div class="label">E-mail</div> : <div class="mobile">user@domain.com</div>
                    <br><div class="label">Address</div> : <div class="email">Ahemdabad</div>
                </td>
                <td class="description-td">
                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI2OC43MjUgMjY4LjcyNSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMjY4LjcyNSAyNjguNzI1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCI+CjxnIGlkPSJFZGl0Ij4KCTxwYXRoIHN0eWxlPSJmaWxsLXJ1bGU6ZXZlbm9kZDtjbGlwLXJ1bGU6ZXZlbm9kZDsiIGQ9Ik0xNjEuMzU5LDU2LjMzN2MtNy4wNDEtNy4wNDktMTguNDU4LTcuMDQ5LTI1LjQ5OCwwbC02LjM3NCw2LjM4MSAgIGwtODkuMjQzLDg5LjMzN2wwLjAyMywwLjAyM2wtMi44MTIsMi44MmMwLDAtOC45NjgsOS4wMzItMjkuMjE2LDc0LjM5OWMtMC4xNDIsMC40NTctMC4yODMsMC45MTEtMC40MjYsMS4zNzQgICBjLTAuMzYxLDEuMTcxLTAuNzI2LDIuMzYxLTEuMDk0LDMuNTY3Yy0wLjMyNiwxLjA2Ni0wLjY1NiwyLjE1NC0wLjk4NywzLjI0OWMtMC4yNzksMC45MjMtMC41NTYsMS44MzYtMC44MzksMi43NzkgICBjLTAuNjQyLDIuMTQtMS4yOTIsNC4zMTgtMS45NTUsNi41NjdjLTEuNDU1LDQuOTM3LTUuMDA5LDE2LjA3LTAuOTksMjAuMWMzLjg3LDMuODgyLDE1LjEyLDAuNDY3LDIwLjA0My0wLjk5MyAgIGMyLjIzMi0wLjY2Miw0LjM5NS0xLjMxMSw2LjUxOS0xLjk1MmMwLjk4MS0wLjI5NiwxLjkzMi0wLjU4NiwyLjg5MS0wLjg3OGMxLjAzMS0wLjMxNCwyLjA1Ny0wLjYyNiwzLjA2Mi0wLjkzNSAgIGMxLjI2OS0wLjM5LDIuNTItMC43NzUsMy43NS0xLjE1N2MwLjM2Ny0wLjExNCwwLjcyNy0wLjIyNywxLjA5MS0wLjM0YzYyLjE5Mi0xOS4zNjUsNzMuMzU3LTI4LjQ1Myw3NC4yODUtMjkuMjg0ICAgYzAuMDA3LTAuMDA1LDAuMDA3LTAuMDA1LDAuMDEyLTAuMDFjMC4wMzktMC4wMzYsMC4wNjYtMC4wNiwwLjA2Ni0wLjA2bDIuODc5LTIuODg2bDAuMTkzLDAuMTkzbDg5LjI0NS04OS4zMzdsLTAuMDAxLTAuMDAxICAgbDYuMzc0LTYuMzgxYzcuMDQxLTcuMDQ4LDcuMDQxLTE4LjQ3NiwwLTI1LjUyNUwxNjEuMzU5LDU2LjMzN3ogTTEwMy4zOTksMjE5Ljc4MmMtMC4wNzgsMC4wNTMtMC4xODQsMC4xMjItMC4yOTYsMC4xOTMgICBjLTAuMDYyLDAuMDQtMC4xMzcsMC4wODctMC4yMTEsMC4xMzNjLTAuMDc1LDAuMDQ3LTAuMTU3LDAuMDk4LTAuMjQ0LDAuMTUxYy0wLjA3NywwLjA0Ny0wLjE1NywwLjA5NS0wLjI0MywwLjE0NyAgIGMtMi45NjksMS43NzctMTEuNjgyLDYuMzYyLTMyLjgyOCwxNC4wMTdjLTIuNDcxLDAuODk0LTUuMTYyLDEuODQyLTcuOTgxLDIuODE5bC0zMC4wNi0zMC4wOTFjMC45OC0yLjg0LDEuOTI5LTUuNTUxLDIuODI2LTguMDQxICAgYzcuNjM4LTIxLjIzNSwxMi4yMTktMjkuOTc0LDEzLjk4Ni0zMi45MzljMC4wNDMtMC4wNzEsMC4wODItMC4xMzYsMC4xMjEtMC4yYzAuMDYyLTAuMTAyLDAuMTItMC4xOTcsMC4xNzQtMC4yODQgICBjMC4wNDMtMC4wNjksMC4wODgtMC4xNDEsMC4xMjYtMC4yYzAuMDcxLTAuMTExLDAuMTQtMC4yMTcsMC4xOTMtMC4yOTZsMi4yLTIuMjA2bDU0LjQ4NSw1NC41NDJMMTAzLjM5OSwyMTkuNzgyeiBNMjYzLjM1MSw1Ni4zMzcgICBsLTUwLjk5Ny01MS4wNWMtNy4wNDEtNy4wNDgtMTguNDU2LTcuMDQ4LTI1LjQ5OCwwbC0xMi43NDgsMTIuNzYzYy03LjA0MSw3LjA0OC03LjA0MSwxOC40NzYsMCwyNS41MjRsNTAuOTk2LDUxLjA1ICAgYzcuMDQsNy4wNDgsMTguNDU3LDcuMDQ4LDI1LjQ5OCwwbDEyLjc0OS0xMi43NjJDMjcwLjM5Miw3NC44MTMsMjcwLjM5Miw2My4zODUsMjYzLjM1MSw1Ni4zMzd6IiBmaWxsPSIjODg4ODg4Ii8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="edit">
                    <div class="description" spellcheck="false">This is a Short Information of the Student</div>

                </td>
            </tr>

        </table>

    </body>
</html>
