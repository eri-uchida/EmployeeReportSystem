<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${employee!=null}">
                <br/><font size="5">社員番号： ${employee.code}のスタッフ情報 編集ページ</font></br></br>
                <form method="POST"action="<c:url value='/employees/update'/>">
                    <c:import url="_form2.jsp"/>
                </form>


            <p><button type ="submit" a href ="#" onclick="confirmDestroy();" class="btn btn-danger">このスタッフ情報を削除する</button></a></p>
            <form method="POST" action="<c:url value='/employees/destroy'/>">
                <input type="hidden" name="_tokne" value="${_token}"/>
            </form>
            <script>
            function confirmDestroy(){
                if(confirm("本当に削除してよろしいですか？")){
                    document.forms[1].submit();
                }
            }
            </script>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/employees/index'/>" style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
    </c:param>
</c:import>