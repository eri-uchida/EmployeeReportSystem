<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:if test="${hasError}">
            <div id="flush_error">
                社員番号かパスワードが間違っています。
            </div>
        </c:if>
        <c:if test="${flush!=null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>


        <div class="form-wrapper">
        <h1>Sign In</h1>
        <form method="POST" action="<c:url value='login'/>">

        <div class="form-item">
            <label for="code"></label>
            <input type="text" name="code" required="required" placeholder="社員番号" value="${code}"/>
        </div>
            <br/>
        <div class="form-item">
            <label for="password"></label>
            <input type="password" name="password" required="required" placeholder="Password">
            <br/>
        </div>

        <div class="button-panel">
            <input type ="hidden" name="_token" value="${_token}/">
            <button type="submit"  class="button" title="Sign In" value="Sign In">Sign In</button>
        </div>
        </form>
        </div>
    </c:param>
</c:import>