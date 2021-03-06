<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2020/6/20
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>新增</title>
    <link rel="stylesheet" href="${basePath}css/styles.css" />
    <link rel="stylesheet" href="${basePath}css/font-awesome-4.7.0/css/font-awesome.min.css" />
    <script src="${basePath}js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script src="${basePath}js/jquery-validation-1.19.1/jquery.validate.js" type="text/javascript"></script>
    <script src="${basePath}js/jquery-validation-1.19.1/localization/messages_zh.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#addForm").validate({
                rules:{
                    cName:"required",
                    tId:"required"
                }
            });
        });
    </script>
</head>
<body>
<div class="add">
    <form id="addForm" action="${basePath}course?method=editSubmit" method="post">
        <input type="hidden" name="cId" value="${course.cId}">
        <table class="table_add">
            <tr>
                <td>课程名称</td>
                <td style="color: red;font-style:italic"><input type="text" name="cName" value="${course.cName}"></td>
            </tr>
            <tr>
                <td>老师</td>
                <td style="color: red;font-style:italic">
                    <select name="tId">
                        <option value="">请选择老师</option>
                        <c:forEach items="${teachers}" var="teacher">
                            <option
                                    <c:if test="${course.teacher.tId == teacher.tId}">
                                        selected
                                    </c:if>
                                    value="${teacher.tId}">${teacher.tName}
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <button class="back" type="button" onclick="window.history.back(-1);">
                        <i class="fa fa-arrow-left"></i>
                        返回
                    </button>
                    <button class="submit" type="submit">
                        <i class="fa fa-save"></i>
                        提交
                    </button>
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
