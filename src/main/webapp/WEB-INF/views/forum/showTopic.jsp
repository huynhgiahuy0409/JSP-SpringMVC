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
    <link rel="stylesheet" href="/css/forum/show-topic.css">
    <link rel="stylesheet" href="/css/forum/header.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
    <%@ include file="../header.jsp" %>
    <div class="container">
        <div class="topic-detail">
            <h1 class="topic-title">${topicDetail.topic.title}</h1>
            <c:if test="${topicDetail.lastMessage != null}">
                <p>Bài mới nhất gửi <span>${topicDetail.lastMessage.sendDate}</span>, do ${topicDetail.lastMessage.username}
                    gửi tổng ${topicDetail.lastMessage.countMessage} hồi âm </p>
            </c:if>
            <c:if test="${topicDetail.lastMessage == null}">
                <p>Không có bất cứ phản hồi nào về chủ đề này</p>
            </c:if>
            <p>Tổng số phản hồi: ${topicDetail.messageDetailList.size()}</p>
            <div class="message">
                <div class="message__header">
                    <div class="create-date">${topicDetail.topic.createDate}</div>
                </div>
                <div class="message__body">
                    <div class="row">
                        <div class="col l-3">
                            <div class="owner">
                                <div class="owner__name">
                                    Topic được tạo bởi: ${topicDetail.topic.creator.username}
                                </div>
                                <div class="join-date">
                                    Ngày tham gia ${topicDetail.topic.creator.joinDateString}
                                </div>
                            </div>
                        </div>
                        <div class="col l-9">
                            <div class="message-detail">
                                <div class="message-detail__header">
                                    <p class="title">
                                       Tên chủ đề: T${topicDetail.topic.title}
                                    </p>
                                    <a href="/topic/${topicDetail.topic.id}/reply">Trả lời</a>
                                </div>
                                <div class="message-detail__content">
                                    ${topicDetail.topic.content}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:forEach var="messageDetail" items="${topicDetail.messageDetailList}">
                <div class="message">
                    <div class="message__header">
                        <div class="create-date">${messageDetail.createDate}</div>
                    </div>
                    <div class="message__body">
                        <div class="row">
                            <div class="col l-3">
                                <div class="owner">
                                    <div class="owner__name">
                                       Phản hồi bởi: ${messageDetail.user.username}
                                    </div>
                                    <div class="join-date">
                                        Ngày tham gia ${messageDetail.user.joinDateString}
                                    </div>
                                </div>
                            </div>
                            <div class="col l-9">
                                <div class="message-detail">
                                    <div class="message-detail__header">
                                        <p class="title">
                                            ${messageDetail.title}
                                        </p>
                                        <a href="/topic/${topicDetail.topic.id}/reply">Trả lời</a>
                                    </div>
                                    <div class="message-detail__content">
                                            ${messageDetail.content}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class  ="footer">
        <a href="/topic">Danh sách chủ đề</a>
    </div>
</body>
</html>