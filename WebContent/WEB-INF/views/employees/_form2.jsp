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

<div class="mb-3">
<label for="code" class="form-label">社員番号</label><br />
<input type="text" class="form-control" name="code" id="code" placeholder="社員番号を入力してください" value="${employee.code}" />
<br />

<label for="name" class="form-label">氏名</label><br/>
<input type="text" class="form-control"  name="name" id="name" value="${employee.name}"  placeholder="氏名を入力してください"/>
<br/>

<label for="password"  class="col-sm-2 col-form-label">パスワード</label><br/>
<div class="col-sm-10">
<input type="password" class="form-control" name="password" id="password" placeholder="パスワードは変更する場合のみ入力してください"/>
<br/>
</div>

権限<br/>
<select class="admin_flag" select name="admin_flag" aria-label="権限">
  <option selected>選択してください</option>
  <option value="0" <c:if test="${employee.admin_flag == 0}"> selected</c:if>>一般</option>
  <option value="1" <c:if test="${employee.admin_flag == 1}"> selected</c:if>>管理者</option>
</select>
<br/><br/>
</div>

<input type="hidden" name="_token" value="${_token}"/>
<button type ="submit"  class="btn btn-secondary">登録</button>