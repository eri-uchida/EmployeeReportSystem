<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>スタッフレポート</title>

        <!-- CSS読み込み -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- jQuery読み込み -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- BootstrapのJS読み込み -->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>



    <body>
        <div id="wapper">
            <div id="header">
                <div id="header_menu">
                    <h1><a href="<c:url value='/'/>" style="color:#FF1493;"><font size="7">Staff Blog</font></a></h1>&nbsp;&nbsp;&nbsp;
                <c:if test="${sessionScope.login_employee != null}">
                    <c:if test="${sessionScope.login_employee.admin_flag == 1}">
                    <a href="<c:url value='/employees/index'/>"  style="color:#8B008B"><font size="4">スタッフ管理</font></a>&nbsp;
                    </c:if>
                <a href="<c:url value='/reports/index'/>"  style="color:#8B008B"><font size="4">ブログ管理</font></a>&nbsp;
                </c:if>
                </div>
                <c:if test="${sessionScope.login_employee != null}">
                    <div id="employee_name">
                         <c:out value="${sessionScope.login_employee.name}"/>&nbsp;&nbsp;
                        <a href="<c:url value='/logout'/>" style="color:#8B008B">ログアウト</a>
                    </div>
                </c:if>
            </div>
            <div id="content">
                ${param.content}
            </div>
            <div id="footer">
                by Eri Uchida.
            </div>
        </div>
    </body>
</html>