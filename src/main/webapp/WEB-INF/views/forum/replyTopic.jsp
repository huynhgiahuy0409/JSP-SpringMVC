<%@ include file="/WEB-INF/views/common.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/forum/reply-topic.css">
    <link rel="stylesheet" href="/css/forum/header.css">
    <link rel="stylesheet" href="/css/common.css">

</head>
<body>
<%@ include file="../header.jsp" %>
<h2 style="text-align: center">Phản hồi về chủ đề: ${topicTitle}</h2>
<div class="container">
    <form id="reply-form" action="/topic/${topicId}/reply" method="post">
        <div class="line-group">
            <div class="label">Tiêu đề</div>
            <div class="line-form">
                <input type="text" name="messageTitle" placeholder="Vui lòng nhập tiêu đề message"/>
            </div>
        </div>
        <div class="line-group">
            <div class="label">Nội dung</div>
            <div class="line-form textarea">
                <textarea type="text" name="messageContent" placeholder="Vui lòng nhập nội dung message" cols="30"
                          rows="10"></textarea>
            </div>
        </div>
        <div class="d-flex">
            <button class="mr-r-10" type="submit">Gởi</button>
            <a class="primary-btn" href="/topic">
                Huỷ bỏ
            </a>
        </div>
    </form>
</div>
</body>
</html>