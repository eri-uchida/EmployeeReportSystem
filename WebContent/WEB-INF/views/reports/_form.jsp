<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors!=null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br/>
        <c:forEach var ="error" items="${errors}">
            ・<c:out value="${error}"/><br/>
        </c:forEach>

    </div>
</c:if>
<div class="mb-3">
<label for="report_date" class="form-label">日付</label><br/>
<input type="date" class="form-control" name="report_date"  placeholder="日付を入力してください" value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd'/>"/>
<br/><br/>

<label for="name">氏名</label><br/>
<c:out value="${sessionScope.login_employee.name}"/>
<br/><br/>

<label for="title" class="form-label">タイトル</label><br/>
<input type="text" class="form-control" name="title" id="title" placeholder="タイトルを入力してください" value="${report.title}"/>
<br/><br/>

<label for="content" class="form-label">本文</label><br/>
<textarea  class="form-control" name="content" id="content" rows="3"   placeholder="本文を入力してください" >${report.content}</textarea>
</div>
<br/><br/>

<input type="hidden" name="_token" value="${_token}"/>
<button type ="submit"  class="btn btn-danger">投稿</button>