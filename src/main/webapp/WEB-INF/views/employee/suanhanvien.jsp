<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
    <form class="employee-detail" action="/employee/${employee.id}/update" method="post">
        <h1>Cập nhật nhân viên</h1>
        <div class="row">
            <div class="col l-6">
                <div class="label">
                    <span>Mã NV</span>
                </div>
            </div>
            <div class="col l-6" name="id">
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
                <div class="line-group">
                    <div class="line-form">
                        <input type="text" value="${employee.name}" name="name" required>
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
                                   value="true" ${employee.male == true ? 'checked' : ''} required>
                        </span>
                        Nam
                    </div>
                    <div class="d-flex align-items-center">
                        <span class="mr-r-5">
                            <input class="mr-r-5" type="radio" placeholder="Nữ" name="male"
                                   value="false" ${employee.male == false ? 'checked' : ''} required>
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
                        <input type="date" name="birthday" value="${employee.birthday}" required>
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
                        <input type="text" value="${employee.address}" name="address" required>
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
                        <input type="text" value="${employee.phone}" name="phone" required>
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
                        <input type="text" value="${employee.department}" name="department" required>
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
                        <input type="text" value="${employee.title}" name="title" required>
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
                        <input type="text" value="${employee.wageRate}" name="wageRate" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex align-items-center">
            <button type="submit" class="primary-btn mr-r-10">Cập nhật</button>
            <a href="/employee/list" class="primary-btn">Huỷ</a>
        </div>
    </form>
</div>
</body>
</html>
