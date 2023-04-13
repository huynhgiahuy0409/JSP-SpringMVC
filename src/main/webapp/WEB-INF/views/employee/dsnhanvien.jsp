<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/employee/dsnhanvien.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="employee-table__wrapper">
    <div class="employee-table">
        <div class="employee-table__header">
            Tổng số nhân viên: ${employees.size()}
        </div>
        <div class="employee-table__action">
            <div class="d-flex align-items-center">
                <a href="/employee/add" class="primary-btn mr-r-5">Thêm nhân viên</a>
                <a href="" class="primary-btn">Xoá</a>
            </div>
        </div>
        <div class="employee-table__body">
            <div class="label">
                <div class="row">
                    <div class="col l-2">
                        Sửa
                    </div>
                    <div class="col l-2">
                        Chọn
                    </div>
                    <div class="col l-2">
                        Mã NV
                    </div>
                    <div class="col l-4">
                        Họ tên
                    </div>
                    <div class="col l-2">
                        Ngày sinh
                    </div>
                </div>
            </div>
            <c:forEach var="employee" items="${employees}">
                <div class="row">
                    <div class="col l-2">
                        <a href="/employee/${employee.id}/update" class="primary-btn">Sửa</a>
                    </div>
                    <div class="col l-2">
                        <div class="d-flex align-items-center justify-content-center">
                            <input type="checkbox">
                        </div>
                    </div>
                    <div class="col l-2">
                        <a href="/employee/${employee.id}">${employee.id}</a>
                    </div>
                    <div class="col l-4">
                            ${employee.name}
                    </div>
                    <div class="col l-2">
                          <fmt:parseDate var="birthday" value="${employee.birthday}" pattern="yyyy-MM-dd"/>
                          <fmt:formatDate value="${birthday}" pattern="dd/MM/yyyy" />
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</div>
</body>
</html>