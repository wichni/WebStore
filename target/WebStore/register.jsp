<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<div class="zewnetrzny" style="position: relative">
    <img src="smarthousetablet.jpg" alt="smartHome" title="Smart Home" style="background-size: auto 100px">
    <center>
        <form action="nextRegisterSite.jsp">
            <div class="container" style="
                position: absolute;
                background-size: cover;
                color: black;
                top: 20px;
                right: 20px;
                padding-left: 20px;
                padding-right: 20px">
                <h1>Register</h1>
                <b>Please fill in this form to create an account.</b>
                <hr>

                <label><b>Email</b></label>
                <input type="email" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <label><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
                </hr>
                <p>
                    <button type="submit" class="registerbtn">Register</button>
                </p>

                <b>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</b>

                <p><b>Already have an account? <a href="index.jsp">Sign in</a>.</b></p>
            </div>
        </form>
    </center>
</div>
</div>
</body>
</html>
