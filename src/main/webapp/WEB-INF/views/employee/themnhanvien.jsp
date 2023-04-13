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
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/employee/chitietnhanvien.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="employee-detail_wrapper">
    <form id="addEmployeeForm" class="employee-detail" action="/employee/add" method="post">
        <h1>Thêm nhân viên</h1>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Mã NV</span>
                </div>
            </div>
            <div class="col l-6" name="id">
                <div class="line-group">
                    <div class="line-form">
                        <input onchange="checkEmployeeId(this.value)" id="employeeId" type="text" name="id"
                               placeholder="Vui lòng nhập mã nhân viên" required>
                    </div>
                </div>
            </div>
        </div>
        <div id="employeeIdAlert" class="alert"></div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Họ tên</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <input type="text" name="name" required placeholder="Ex: Huỳnh Gia Huy">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Giới tính</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="d-flex align-items-center">
                    <div class="d-flex align-items-center mr-r-10">
                        <span class="mr-r-5">
                            <input class="mr-r-5" type="radio" placeholder="Nam" name="male"
                                   value="true" checked required>
                        </span>
                        Nam
                    </div>
                    <div class="d-flex align-items-center">
                        <span class="mr-r-5">
                            <input class="mr-r-5" type="radio" placeholder="Nữ" name="male"
                                   value="false" required>
                        </span>
                        Nữ
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Ngày sinh</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <input type="date" name="birthday" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Địa chỉ</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <input type="text" name="address" required placeholder="Ex: Thành phố Hồ Chí Minh">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Số điện thoại</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <input type="number" name="phone" placeholder="Ex: 0776425942" pattern="^[0-9]+$" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Phòng ban</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <select name="department">
                            <c:forEach items="${departments}" var="option">
                                <option value="${option}">${option}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Chức vụ</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <select name="title">
                            <c:forEach items="${titles}" var="option">
                                <option value="${option}">${option}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Lương căn bản</span>
                </div>
            </div>
            <div class="col l-6">
                <div class="line-group">
                    <div class="line-form">
                        <input id="wageRateInput" type="number" name="wageRate" required min="0">
                    </div>
                </div>
            </div>
        </div>
            <div id="wageRateAlert" class="alert"></div>
        <div class="d-flex align-items-center">
            <button id="submitBtn" type="submit" class="primary-btn mr-r-10">Lưu</button>
            <a href="/employee/list" class="primary-btn">Huỷ</a>
        </div>
    </form>
</div>

<script src="/js/themnhanvien.js"></script>
</body>
</html>
