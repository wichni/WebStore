<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.DatabaseConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="windows-1250"/>
    <title>Products</title>
</head>
<body>
<%--<%@include file="header.jsp"%>--%>
<div class="outside" style="position: relative">
    <img src="internet-of-things%20(1).jpg" alt="smartHome" title="Smart Home" style="background-size: auto 100px">
    <div class="container" style="
                position: absolute;
                background-size: cover;
                background-image: linear-gradient(109deg, red, yellow);
                color: transparent;
                -webkit-background-clip: text;
                top: 20px;
                left: 20px;
                padding-left: 20px;
                padding-right: 20px">
<h2>Available products:</h2>
<%
    String USER = "root";
    String PASS = "27Majeczka07?";
    Statement stmt = null;
    ResultSet rs = null;
    String category = request.getParameter("category");
    System.out.println("category: " + category);
    if (category == null)
        category = "all";
    String sort = request.getParameter("sort");
    System.out.println("sort: " + sort);
    if (sort == null)
        sort = "name";
    try {
        Connection conn = DatabaseConnection.initializeDatabase("webstore", USER, PASS);
        stmt = conn.createStatement();
        String sql = "SELECT * FROM products";
        if (!category.equals("all"))
            sql = "SELECT * FROM products where category = \'" + category + "\'";
        if (sort.equals("name"))
            sql = sql + " order by name ASC;";
        if (sort.equals("price"))
            sql = sql + " order by price ASC;";
        if (sort.equals("category"))
            sql = sql + " order by category ASC;";
        rs = stmt.executeQuery(sql);
        out.print("<html><head><meta charset=\"UTF-8\"/></head>");
        out.print("<body>");
        out.print("<div style=\"vertical-align:top;\">");
        out.print("<form action = \"products.jsp\" method=\"post\">");
        out.print("Order by:<select name=\"sort\" class=\"textBox\">");
        String[] values = new String[]{"name", "price", "category"};
        for(String val : values)
            if (!sort.equals(val))
               out.print("  <option value=\"" + val+ "\">"+ val + "</option>");
            else
               out.print("  <option value=\""+ val + "\" selected>" + val.substring(0,1).toUpperCase() + val.substring(1) + "</option>");
            out.print("</select>");
            out.print("Selected category:<select name=\"category\" class=\"textBox\">");
            if (category.equals("all"))
                  out.print("  <option value=\"all\" selected>All products</option>");
            else
                  out.print("  <option value=\"all\" selected>All products</option>");
            if (category.equals("SmartHome"))
                  out.print("<option value=\"Smarthome\" selected>Smart Home</option>");
            else
                  out.print("<option value=\"Smarthome\">Smart Home</option>");
            if (category.equals("Quality and comfort"))
                  out.print("<option value=\"tools\" selected>Quality and comfort</option>");
            else
                  out.print("<option value=\"tools\">Quality and comfort</option>");
            if (category.equals("Small home appliances"))
                  out.print("<option value=\"SmallHome\" selected>Small home appliances</option>");
            else
                  out.print("<option value=\"SmallHome\">Small home appliances</option>");
            out.print("</select>");
            out.print("<input type=\"submit\" class=\"button\"value=\"update\"/></form></div>");
        out.print("<form action = \"showShoppingCart.jsp\" method=\"post\">" +
                  "<input type=\"submit\" class=\"button\"value=\"show shopping cart\"/></form>");
        out.print("<table id=\"words\"><thead>" +
                "    <tr>" +
                "      <th>Product name</th>" +
                "      <th>Product price</th>" +
                "      <th>Product category</th>" +
                "      <th>Product index</th>" +
                "      <th>Image</th>" +
                "      <th>Quantity and Adding to shopping cart</th>" +
                "    </tr>\n" +
                "  </thead>");
        int poprzedni = 0;
        while(rs.next()) {
            String bgColor;
            int los = (int)(Math.random()*4);
            if (los == poprzedni) {
                los++;
                los = los % 4;
                poprzedni = los;
            }
            else
                poprzedni = los;
            switch(los) {
                case 0:
                    bgColor = "background-color:antiquewhite;";
                    break;
                case 1:
                    bgColor = "background-color:aliceblue;";
                    break;
                case 2:
                    bgColor = "background-color:azure;";
                    break;
                default:
                    bgColor = "background-color:beige;";
                    break;
            }
         out.print("<tr style=\"" + bgColor + "\"><td>" +
                 rs.getString("name") +
                 "</td><td>" + rs.getDouble("price") +
                 "</td><td>" + rs.getString("category") +
                 "</td><td>" + rs.getInt("indexNum") +
                 "</td><td><img src=\"" + rs.getString("imageURL") + "\" width=\"120\" height=\"120\">" +
                 "</td><td><form action = \"addProduct.jsp\" method=\"post\">" +
                 "<input type =\"number\" name=\"quantity\" class=\"textBox\"/>" +
                 "<input type=\"hidden\" name=\"product\" value=\"" + rs.getInt("indexNum") + "\"/>" +
                 "<input type=\"hidden\" name=\"category\" value=\"" + category + "\"/>" +
                 "<input type=\"hidden\" name=\"sort\" value=\"" + sort + "\"/>" +
                 "<input type=\"hidden\" name=\"price\" value=\"" + rs.getDouble("price") + "\"/>" +
                 "<input type=\"submit\" value=\"add to cart\" class=\"button\"/></form>"+
                 "</td></tr>"
         );
        }
        out.println("</table>");
    }
    catch(ClassNotFoundException cnfe) {
        System.out.println("!!!" + cnfe.getMessage());
    }
    catch(SQLException se) {
        System.out.println("@@@"  +se.getMessage());
    }
%>
<%--<%@include file="footer1.jsp"%>--%>
</body>
</html>
