<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/booking-tour/common.css">
    <link rel="stylesheet" href="/css/booking-tour/booking-tour.css">
</head>
<body>
<div class="booking-form__wrapper">
    <form action="/tour/list" method="get">
        <h1 style="color: var(--primary-color)">Xác nhận đặt tour: ${tour.name}, ${tour.days}</h1>
        <div class="line-group">
            <dib class="label">Thông tin khách hàng</dib>
            <div class="row">
                <div class="col l-6">
                    Họ tên
                </div>
                <div class="col l-6">
                    <span>${bookingForm.fullName}</span>
                </div>
            </div>
            <div class="space-b-10"></div>
            <div class="row">
                <div class="col l-6">
                    Địa chỉ
                </div>
                <div class="col l-6">
                    <span>${bookingForm.address}</span>
                </div>
            </div>
            <div class="space-b-10"></div>
            <div class="row">
                <div class="col l-6">
                    E-mail
                </div>
                <div class="col l-6">
                    <span>${bookingForm.email}</span>
                </div>
            </div>
            <div class="space-b-10"></div>
            <div class="row">
                <div class="col l-6">
                    Điện thoại
                </div>
                <div class="col l-6">
                    <span>${bookingForm.phone}</span>
                </div>
            </div>
        </div>
        <div class="space-20"></div>
        <div class="line-group">
            <dib class="label">Thông tin chuyến đi</dib>
            <div class="row">
                <div class="col l-6">
                    Ngày khởi hành
                </div>
                <div class="col l-6">
                    <span>
                        ${bookingForm.getDepartureDateString()}
                    </span>
                </div>
            </div>
            <div class="space-b-10"></div>
            <div class="row">
                <div class="col l-6">
                    Số người lớn
                </div>
                <div class="col l-6">
                    <span>${bookingForm.noAdults}</span>
                </div>
            </div>
            <div class="space-b-10"></div>
            <div class="row">
                <div class="col l-6">
                    Số trẻ em
                </div>
                <div class="col l-6">
                    <span>${bookingForm.noChildren}</span>
                </div>
            </div>
        </div>
        <div class="d-flex align-items-center justify-content-end">
            <button type="submit" class="mr-r-10">Xác nhận đặt tour</button>
            <a href="/tour/list" class="primary-btn">Huỷ</a>
        </div>
    </form>
</div>
</body>
</html>