function login(type){
    var loginButton = document.getElementById("login-btn");
    var xhr = new XMLHttpRequest();
    if(type != null){
        xhr.open("POST", "MyServlet", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send("mySelect=" + encodeURIComponent(value));
    }else{

    }
}
function submitForumType() {
    var select = document.getElementById("forum-type");
    var value = select.options[select.selectedIndex].value;

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "MyServlet", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.send("mySelect=" + encodeURIComponent(value));
}