<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div if="flush_errors!=null">
        入力内容にエラーがあります。<br/>
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}"/><br/>
        </c:forEach>
    </div>
</c:if>
<laber for="code">氏名</laber><br/>
<input type="text" name="name" value="${employee.name}"/>
<br/><br/>

<laber for="password">パスワード</laber><br/>
<input type="password" name="password"/>
<br/><br/>

<laber for="admin_flag">権限</laber><br/>
<select name="admin_flag">
    <option value="0"<c:if test="${employee.admin_flag == 0}"> selected</c:if>>一般</option>
    <option value="1"<c:if test="${employee.admin_flag == 1}"> selected</c:if>>管理者</option>
</select>
</select>
<br/><br/>

<input type="hidden" name="_token" value="${_token}"/>
<button type="submit">投稿</button>