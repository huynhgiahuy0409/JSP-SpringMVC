var bookingEmail = document.getElementById("bookingEmail")
var bookingEmailAlert = document.getElementById("bookingEmailAlert")
var submitBtn = document.getElementById("submitBtn")
var tourIdInput = document.getElementById("tourIdInput")

function checkExistBooking(value){
    console.log(value)
    submitBtn.removeAttribute("disabled")
    $.ajax({
        type: "GET",
        url: "/tour/" + tourIdInput.value + "/checkExistBooking/?email=" + bookingEmail.value,
        success: function (data) {
            // Xử lý phản hồi từ controller
            bookingEmailAlert.classList.add("show")
            if (data === true) {
                bookingEmailAlert.classList.add("alert-danger")
                bookingEmailAlert.classList.remove("alert-success")
                bookingEmailAlert.innerHTML = "Email không hợp lệ"
                submitBtn.setAttribute("disabled", true)
            } else {
                bookingEmailAlert.classList.add("alert-success")
                bookingEmailAlert.classList.remove("alert-danger")
                bookingEmailAlert.innerHTML = "Email hợp lệ. Được phép đặt tour này"
            }
            if(data === false){
                setTimeout(() => {
                    bookingEmailAlert.classList.remove("show")
                }, 4000)
            }
        },
        error: function () {
            // Xử lý lỗi
            console.log("Error!");
        }
    });
}
