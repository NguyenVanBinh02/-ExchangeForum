function showpassdn() {
    var showdn = document.getElementById("showdn");
    var dangnhappassword = document.getElementById("dangnhappassword");

    if (showdn.checked == false) {
        dangnhappassword.type = "password";
    }
    else {
        dangnhappassword.type = "text";
    }
}



function showpassChange() {
    var showdn = document.getElementById("show");
    var changePass1 = document.getElementById("mk");
    var changePass2 = document.getElementById("remk");
    var changePass3 = document.getElementById("newmk");

    if (showdn.checked == false) {
        changePass1.type = "password";
        changePass2.type = "password";
        changePass3.type = "password";
    }
    else {
        changePass1.type = "text";
        changePass2.type = "text";
        changePass3.type = "text";
    }
}