<%@ include file="/WEB-INF/views/common.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/forum/topic-list.css">
    <link rel="stylesheet" href="/css/forum/header.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="topic-list__wrapper">
    <div class="d-flex">
        <a class="primary-btn" href="/topic/new">
            Gửi bài mới
        </a>
    </div>
    <div class="topic-table">
        <div class="row title">
            <div class="col l-10">
                <span>Chủ đề</span>
            </div>
            <div class="col l-2">
                <span>Hồi âm</span>
            </div>
        </div>
        <c:forEach var="element" items="${topics}">
            <div class="row">
                <div class="col l-10">
                    <a class="topic__title" href="/topic/${element.topicId}">
                            ${element.topicTitle}
                    </a>
                    <div class="topic__short-desc">
                        <c:if test="${element.lastMessageUsername != null}">
                            Bài mới nhất bởi <span
                                class="username">${element.lastMessageUsername}</span>, ${element.createDate}
                        </c:if>
                        <c:if test="${element.lastMessageUsername == null}">
                            Không có message mới
                        </c:if>
                    </div>
                </div>
                <div class="col l-2">
                    <div class="rep-count__wrapper">
                            ${element.totalReply}
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
