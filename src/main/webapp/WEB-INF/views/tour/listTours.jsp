<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/booking-tour/common.css">
    <link rel="stylesheet" href="/css/booking-tour/list-tours.css">
</head>
<body>
<div class="table__wrapper">
    <h1 style="color: var(--primary-color)">Các chương trình du lịch</h1>
    <div class="table">
        <div class="table__header">
            <div class="row">
                <div class="col l-6">Chương trình</div>
                <div class="col l-3">Lịch khởi hành</div>
                <div class="col l-2">Giá</div>
                <div class="col l-1">Đặt</div>
            </div>
        </div>
        <div class="table__body">
            <c:forEach var="tour" items="${tours}">
                <div class="row">
                    <div class="col l-6">
                        <a href="/tour/${tour.id}" class="name">
                                ${tour.name}
                        </a>
                        <p class="schedule">
                                ${tour.days}
                        </p>
                    </div>
                    <div class="col l-3">
                            ${tour.departureSchedule}
                    </div>
                    <div class="col l-2">
                        <div class="price">
                                ${tour.price}đ
                        </div>
                    </div>
                    <div class="col l-1">
                        <a href="/tour/booking/${tour.id}" class="primary-btn">Đặt tour</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>