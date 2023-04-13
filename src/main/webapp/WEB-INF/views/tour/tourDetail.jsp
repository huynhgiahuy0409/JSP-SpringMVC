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
    <link rel="stylesheet" href="/css/booking-tour/tour-detail.css">
</head>
<body>
    <div class="tour-detail__wrapper">
        <div class="tour-detail">
            <div class="tour-detail__header">
                <p class="name">Tên tour: <span>${tour.name}</span></p>
                <div class="schedule-overview">
                    <span>Số ngày:</span> ${tour.days}, <span>Phương tiện:</span> ${tour.transportation}, <span>Lịch khởi hành:</span> ${tour.departureSchedule}
                </div>
            </div>
            <div class="tour-detail__body">
                <h3 style="margin-bottom: 3px">Chi tiết chương trình</h3>
                <c:forEach var="element" items="${tour.tourDescriptions}">
                    <ul style="margin-bottom: 10px">
                        <li>
                        <h4 style="margin: 0px">${element.title}</h4>
                        <p style="margin: 0px">${element.content}</p>
                        </li>
                    </ul>
                </c:forEach>
            </div>
            <div class="tour-detail__footer">
                <div class="d-flex align-items-center justify-content-between">
                    <a href="/tour/booking/${tour.id}" class="primary-btn">Đặt tour</a>
                    <a href="/tour/list">CHƯƠNG TRÌNH TOUR</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>