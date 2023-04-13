var employeeIdAlert = document.getElementById("employeeIdAlert")
var employeeId = document.getElementById("employeeId")
var submitBtn = document.getElementById("submitBtn")
function checkEmployeeId(value) {
    submitBtn.removeAttribute("disabled")
    $.ajax({
        type: "GET",
        url: "/employee/check-id/" + value,
        success: function (data) {
            // Xử lý phản hồi từ controller
            employeeIdAlert.classList.add("show")
            if (data === true) {
                employeeIdAlert.classList.add("alert-danger")
                employeeIdAlert.classList.remove("alert-success")
                employeeIdAlert.innerHTML = "Mã nhân viên đã tồn tại"
                submitBtn.setAttribute("disabled", true)
            } else {
                employeeIdAlert.classList.add("alert-success")
                employeeIdAlert.classList.remove("alert-danger")
                employeeIdAlert.innerHTML = "Mã nhân viên hợp lệ"
            }
            if(data === false){
                setTimeout(() => {
                    employeeIdAlert.classList.remove("show")
                }, 4000)
            }
        },
        error: function () {
            // Xử lý lỗi
            console.log("Error!");
        }
    });
}
function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}
var wageRateInput = document.getElementById("wageRateInput");
var wageRateAlert = document.getElementById("wageRateAlert");
wageRateInput.addEventListener("change", function() {
    if (!isNumber(wageRateInput.value)) {
        wageRateAlert.classList.add("show")
        wageRateAlert.classList.add("alert-danger")
        wageRateAlert.classList.remove("alert-success")
        wageRateAlert.innerHTML = "Vui lòng chỉ nhập số"
        wageRateInput.value = "";
    }else{
        wageRateAlert.classList.remove("show")
    }
});