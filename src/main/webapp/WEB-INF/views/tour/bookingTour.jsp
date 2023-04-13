<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/booking-tour/common.css">
    <link rel="stylesheet" href="/css/booking-tour/booking-tour.css">
</head>
<body>
    <div class="booking-form__wrapper">
        <form action="/tour/${tour.id}/confirm" method="post">
             <h1 style="color: var(--primary-color)">Đặt tour: ${tour.name}, ${tour.days}</h1>
            <div class="line-group">
                <dib class="label">Thông tin khách hàng</dib>
                <div class="row">
                    <div class="col l-6">
                        Họ tên
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input name="fullName" type="text" placeholder="Nguyen Van A">
                        </div>
                    </div>
                </div>
                <div class="space-b-10"></div>
                <div class="row">
                    <div class="col l-6">
                        Địa chỉ
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input type="text" name="address" placeholder="2 đường số 4, quận Bình Tân, thành phố Hồ Chí Minh">
                        </div>
                    </div>
                </div>
                <div class="space-b-10"></div>
                <div class="row">
                    <div class="col l-6">
                        E-mail
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input type="email" name="email" placeholder="Ex: huynhgiahuy492@gmail.com">
                        </div>
                    </div>
                </div>
                <div class="space-b-10"></div>
                <div class="row">
                    <div class="col l-6">
                        Điện thoại
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input type="text" name="phone" placeholder="Ex: 07764259***">
                        </div>
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
                        <div class="line-form">
                            <input type="date" id="departureDate" name="departureDate" value="${bookingForm.departureDate}" required>
                        </div>
                    </div>
                </div>
                <div class="space-b-10"></div>
                <div class="row">
                    <div class="col l-6">
                        Số người lớn
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input name="noAdults" type="number" value="1" min="1" >
                        </div>
                    </div>
                </div>
                <div class="space-b-10"></div>
                <div class="row">
                    <div class="col l-6">
                        Số trẻ em
                    </div>
                    <div class="col l-6">
                        <div class="line-form">
                            <input type="number"  name="noChildren"  value="0" min="0">
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex align-items-center justify-content-end">
                <button type="submit" class="mr-r-10">Gửi</button>
                <a href="/tour/list" class="primary-btn">Huỷ</a>
            </div>
        </form>
    </div>
</body>
</html>