<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/header">
</head>
<body>
    <div class="header">
        <div class="user__wrapper">
            <p class="username">
                Xin chào, ${user.username}
            </p>
            <a href="/login?isLogout=true">Thoát</a>
        </div>
    </div>
</body>
</html>