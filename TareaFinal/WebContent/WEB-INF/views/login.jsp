<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
</head>
<body>

    <div style="margin:10px">
        <h2>${STATUS_MESSAGE}</h2>
        <form action="${pageContext.request.contextPath}/doLogin.html" method="post">

            User Name : <input type="text" id="userName" name="userName"/><br/>

            Password : <input type="password" id="password" name="password"/><br/>

            <input type="submit" value="Login" />

        </form>
    </div>

</body>
</html>
