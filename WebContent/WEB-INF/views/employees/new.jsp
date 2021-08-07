<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>スタッフ新規登録</h2>

        <form method="POST" action="<c:url value='/employees/create'/>">
            <c:import url="_form.jsp"/>
        </form>

        <p><a href="<c:url value='/employees/index'/>"  style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
    </c:param>
</c:import>