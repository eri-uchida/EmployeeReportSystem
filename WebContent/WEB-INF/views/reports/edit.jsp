<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${report != null}">
                <br/>
                <font size="4">ブログ編集ページ</font><br/><br/>
                <form method="POST" action="<c:url value='/reports/update'/>">
                    <c:import url="_form.jsp"/>
                </form>
            </c:when>
            <c:otherwise>
                <h2>Not found</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/reports/index'/>"  style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
    </c:param>
</c:import>