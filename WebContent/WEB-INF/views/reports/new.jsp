<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <br/><br/>
        <font size="5">新規ブログ投稿</font><br/><br/>

        <form method="POST" action="<c:url value='/reports/create'/>">
            <c:import url="_form.jsp"/>
        </form>

        <p><a href="<c:url value='/reports/index'/>"  style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
    </c:param>

</c:import>