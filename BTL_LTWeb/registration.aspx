<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="registration.aspx.cs" Inherits="BTL_LTWeb.registration" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">



        <!-- phần container nội dung diễn đàn -->
        <div class="content">
            <div id="reg-form" class="auth">
                        <form action="registration.aspx" method="post" runat="server">
                            <div class="authentic__form-header">
                                <h2 class="authentic__form-heading">TẠO TÀI KHOẢN MỚI</h2>
                                <p class="authentic__form--nextPage-login">
                                    Bạn đã có tài khoản? Mời <a href="login.aspx">Đăng nhập</a>
                                </p>
                            </div>
                            <div class="auth__form">
                                <div class="form-control">
                                    <label for="username">Họ và tên:</label>
                                    <input type="text" id="name" placeholder="Nhập tên đăng nhập" name="name"/>
                                    <p runat="server" id="name_error"></p>
                                </div>
                                <div class="form-control">
                                    <label for="email">Email:</label>
                                    <input type="text" id="email" placeholder="Nhập email" name="email"/>
                                    <p></p>
                                </div>
                                <div class="form-control">
                                    <label for="number">Số điện thoại:</label>
                                    <input type="text" id="number" placeholder="Nhập số điện thoại" name="number"/>
                                    <p></p>
                                </div>
                                <div class="form-control">
                                    <label for="password">Mật khẩu:</label>
                                    <input type="password" id="password" placeholder="Nhập mật khẩu" name="password"/>
                                    <p></p>
                                </div>
                                <div class="form-control">
                                    <label for="repassword">Nhập lại mật khẩu:</label>
                                    <input type="password" id="repassword" placeholder="Nhập lại mật khẩu" name="repassword"/>
                                    <p></p>
                                </div>
                                <p runat="server" id="btn_error" style="color:red"></p>
                                <button class="auth_btn" id="btnReg">Đăng ký</button>
                            </div>
                        </form>
                    </div>
                
            </div>
   <%-- <script>
        let form = document.querySelector('.auth__form');
        let name = document.getElementById('name');
        let email = document.getElementById('email');
        let number = document.getElementById('number');
let password = document.getElementById('password');
        let repassword = document.getElementById('repassword');
        let inputs = form.querySelectorAll('input');

        check = true;

        // Check bỏ trống
        for (let i = 0; i < inputs.length; i++) {
            inputs[i].onblur = inputs[i].oninput = function () {
                if (inputs[i].value.trim()) {
                    setSuccessFor(inputs[i]);
                } else {
                    setErrorFor(inputs[i], 'Trường này không được bỏ trống');
                    check = false;
                }
            }
        }
        function setErrorFor(input, message) {
            const formControl = input.parentElement;
            const p = formControl.querySelector('p');
            p.innerText = message;
            formControl.className = 'form-control invalid';
            input.focus();
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            const p = formControl.querySelector('p');
            p.innerText = '';
            formControl.className = 'form-control valid';
        }

        name.onblur = name.oninput = function () {
            if (name.value.trim().length < 6) {
                setErrorFor(name, 'Tên đăng nhập phải ít nhất 6 ký tự');
                check = false;

            } else {
                setSuccessFor(name);
                check = true;
            }
        }
        function validateEmail(email) {
            var re = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            return re.test(email);
        }
        email.onblur = email.oninput = function () {
            if (!validateEmail(email.value)) {
                setErrorFor(email, "Sai định dạng email");
            }
            else {
                setSuccessFor(email);
            }
        }
        


        // Check trùng password 
        repassword.onblur = repassword.oninput = function () {
            if (repassword.value.trim() === password.value.trim()) {
                setSuccessFor(repassword);
            } else {
                //setErrorFor(repassword, '');
                setErrorFor(repassword, 'Mật khẩu chưa trùng khớp');
            }
        }
        

        btnReg.onclick = function (e) {
            var valid = true;
            if (!(name.value.trim() || email.value.trim() || number.value.trim() || password.value.trim() || repassword.value.trim())) {
                //alert('Hãy điền đầy đủ các trường');
                let btn_error = document.getElementById('btn_error');
btn_error.innerHTML = 'Hãy điền đầy đủ các trường';
                valid = false;
            }

            if (!name.value.trim()) {
                setErrorFor(name, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            }
            else {
                setSuccessFor(name);
            }
            if (!email.value.trim()) {
                setErrorFor(email, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(email);
            }
            if (!number.value.trim()) {
                setErrorFor(number, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            }
            else {
                setSuccessFor(number);
            }
            if (!password.value.trim()) {
                setErrorFor(password, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(password);
            }
            if (!repassword.value.trim()) {
                setErrorFor(repassword, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(repassword);
            }
            if (!valid) {
                e.preventDefault();
            }
        }
    </script>--%>
</asp:Content>
