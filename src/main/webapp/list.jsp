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
                <tr >
                    <td>${user.userId}</td>
                    <td>${user.userName}</td>
                    <td>${user.userBirthday}</td>
                    <td>${user.userSalary}</td>
                </tr>
                <tr align="right">
                	<td colspan="4">
		                <table style="color:blue;">
				            <tr>
				                <td>消息Id</td>
				                <td>消息标题</td>
				                <td>消息内容</td>
				            </tr>
				            <c:forEach var="message" items="${user.messages}">
					            <tr>
					                <td>${message.messageId }</td>
					                <td>${message.messageTitle}</td>
					                <td>${message.messageContent }</td>
					            </tr>
				            </c:forEach>
			            </table>
		            <td>
	            </tr>
                
            </c:forEach>
        </table>
        <hr>
         <table style="color:blue;">
		            <tr>
		                <th>消息Id</th>
		                <th>消息标题</th>
		                <th>消息内容</th>
		                <th>发布用户</th>
		            </tr>
		            <c:forEach var="message" items="${lstMessages}">
			            <tr>
			                <td>${message.messageId }</td>
			                <td>${message.messageTitle}</td>
			                <td>${message.messageContent }</td>
			                <td>${message.user.userName }</td>
			            </tr>
		            </c:forEach>
		</table>
    </body>
</html>