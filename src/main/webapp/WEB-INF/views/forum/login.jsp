<%@ include file="/WEB-INF/views/common.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String type = request.getParameter("type");
%>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/forum/login.css">
</head>
<body>
    <div class="login-wrapper">
        <form class="login" id="form" action="/login" method="post">
            <div class="title">Đăng nhập</div>
            <c:if  test="<%= type == null %>">
                <div class="sub-title">
                 (JSP + Spring MVC)
                </div>
            </c:if >
            <div class="line-group">
                <div class="label">Tài khoản</div>
                <div class="line-form">
                    <input type="text" name="username" placeholder="Vui lòng nhập mật khẩu"/>
                </div>
            </div>
            <div class="line-group">
                <div class="label">Mật khẩu</div>
                <div class="line-form">
                    <input type="password" name="password" placeholder="Vui lòng nhập mật khẩu"/>
                </div>
            </div>
            <div class="alert" >
                <c:if test="${invalid != null}">
                    ${invalid}
                </c:if>
            </div>
            <button type="submit" id="login-btn">Đăng nhập </button>
        </form>
    </div>
</body>
</html>
   