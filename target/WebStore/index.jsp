<html>
<head>
    <meta charset="utf-8">
    <title>WebStore</title>
</head>
<body>
<%
    Object userMsg = request.getAttribute("userMsg");
    String userMessage = "";
    if (userMsg != null)
        userMessage += userMsg;
    Object login = "";
    if (request.getParameter("user") != null)
        login = request.getAttribute("user");
    String passwordMessage = "";
    Object passwordMsg = request.getAttribute("passwordMsg");
    System.out.println("passwordMsg:" + passwordMsg);
    if (passwordMsg != null)
        passwordMessage = "" + request.getAttribute("passwordMsg") + "<br/>";
%>

<c:set var="loginValue" value="<%=login%>"/>
<div class="zewnetrzny" style="position: relative">
    <img src="smartHome.jpg" alt="smartHome" title="Smart Home" style="background-size: auto 100px">
    <div class="wewnetrzny" style="position: absolute;
         top: 20px;
         left: 20px;
         background-size: cover;
         background-image: linear-gradient(109deg, red, yellow);
         color: transparent;
         -webkit-background-clip: text;
         padding-left: 20px;
         padding-right: 20px;">
        <center>
            <h2>Hello World!</h2>
            <h3>Welcome to us Smart World!</h3>
            <form action="products.jsp">
                <input type="text" placeholder="Username" name="login" required>
                <p style="color: red;"><%=userMessage%>
                </p>
                <input type="password" placeholder="Password" name="psw" required>
                <p style="color: red;"><%=passwordMessage%>
                </p>
                <button type="submit">Login</button>
            </form>
            <form action="register.jsp" style="
background-size: cover;
  color: white">
                <button type="submit" class="signupbtn">Sign Up</button>
            </form>
        </center>
    </div>
</div>
</body>
</html>
