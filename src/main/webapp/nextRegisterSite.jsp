<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Your profile</title>
</head>
<body>
<div class="zewnetrzny" style="position: relative">
    <img src="internet-of-things-analytics.jpg" alt="smartHome" title="Smart Home" style="background-size: auto 100px">
    <center>
        <form action="RegisterUser">
            <div class="container" style="
                position: absolute;
                background-size: cover;
                color: black;
                top: 20px;
                left: 20px;
                padding-left: 20px;
                padding-right: 20px">
                <h1>Add your personal details</h1>
                <b>Or do it later and go to the store</b>
                <p>
                    <button type="submit" class="storeButton"><a href="action_page.jsp"> Store</a></button>
                </p>
                <hr>

                <p>
                    <label><b>Enter name</b></label>
                    <input type="text" placeholder="Enter name" name="name" required>
                </p>
                <p>
                    <label><b>Enter surname</b></label>
                    <input type="text" placeholder="Enter surname" name="surname" required>
                </p>
                <p>
                    <label><b>Enter street</b></label>
                    <input type="text" placeholder="Enter street and house number" name="address" required>
                </p>
                <p>
                    <label><b>Enter postCode</b></label>
                    <input type="text" placeholder="Enter postCode" name="postCode" required>
                </p>
                <p>
                    <label><b>Enter city</b></label>
                    <input type="text" placeholder="Enter city" name="city" required>
                </p>
                <p>
                    <label><b>Change Email</b></label>
                    <input type="email" placeholder="Enter Email" name="email" required>
                </p>
                <p>
                    <label><b>Repeat Email</b></label>
                    <input type="email" placeholder="Repeat Email" name="email-repeat" required>
                </p>
                <p>
                    <label><b>Change password</b></label>
                    <input type="password" placeholder="Enter Password" name="psw" required>
                </p>
                <p>
                    <label><b>Repeat Password</b></label>
                    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
                </p>
                <hr>
            </div>
        </form>

        <form action="nextRegisterSite.jsp"></a>
            <p>
                <button type="submit" class="savebutton">Save</button>
            </p>
        </form>
    </center>
</div>
</body>
</html>
