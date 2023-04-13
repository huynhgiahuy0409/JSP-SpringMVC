<%@ include file="/src/main/webapp/WEB-INF/views/common.jsp" %>
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
</head>
<body>
<div class="employee-detail_wrapper">
    <div class="employee-detail">
        <h1>Chi tiết nhân viên</h1>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Mã NV</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.id}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Họ tên</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.name}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Giới tính</span>
                </div>
            </div>
            <div class="col l-6">
                <c:if test="${employee.male}">
                    Nam
                </c:if>
                <c:if test="${employee.male == false}">
                    Nữ
                </c:if>
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Ngày sinh</span>
                </div>
            </div>
            <div class="col l-6">
                <fmt:parseDate var="birthday" value="${employee.birthday}" pattern="yyyy-MM-dd"/>
                <fmt:formatDate value="${birthday}" pattern="dd/MM/yyyy" />
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Địa chỉ</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.address}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Số điện thoại</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.phone}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Phòng ban</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.department}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Chức vụ</span>
                </div>
            </div>
            <div class="col l-6">
                ${employee.title}
            </div>
        </div>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Lương căn bản</span>
                </div>
            </div>
            <div class="col l-6">
                <fmt:formatNumber value="${employee.wageRate}" type="currency" currencyCode="VND"
                                  maxFractionDigits="0"/>
            </div>
        </div>

        <div class="d-flex align-items-center">
            <a href="/employee/list" class="primary-btn mr-r-10">Danh sách nhân viên</a>
            <a href="/employee/${employee.id}/update" class="primary-btn">Sửa</a>
        </div>
    </div>
</div>
</body>
</html>
