<%@ page language="java" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>显示用户信息</title>
        <style type="text/css">
            table,td{
                border: 1px solid;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <td>用户ID</td>
                <td>用户名</td>
                <td>用户生日</td>
                <td>工资${lstUsers.size() }</td>
            </tr>
            <%--遍历lstUsers集合中的User对象 --%>
            <c:forEach var="user" items="${lstUsers}">
                <tr>
                    <td>${user.userId}</td>
                    <td>${user.userName}</td>
                    <td>${user.userBirthday}</td>
                    <td>${user.userSalary}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>