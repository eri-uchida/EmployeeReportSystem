<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${employee != null}">
                <br/><font size="5">社員番号 ${employee.code}：${employee.name}<br/>
                登録情報詳細</font></br><br/>

                <table class="table table-primary">
                    <tbody>
                        <tr>
                            <th scope="col">社員番号</th>
                            <td><c:out value="${employee.code}"/></td>
                        </tr>

                        <tr>
                            <th scope="col">氏名</th>
                            <td><c:out value="${employee.name}"/></td>
                        </tr>

                        <tr>
                            <th scope="col">権限</th>
                            <td>
                                <c:choose>
                                    <c:when test="${employee.admin_flag==1}">管理者</c:when>
                                    <c:otherwise>一般</c:otherwise>
                                </c:choose>
                        </tr>

                        <tr>
                            <th scope="col">登録日時</th>
                            <td>
                                <fmt:formatDate value="${employee.updated_at}" pattern="yyyy年MM月dd日 HH:mm:ss"/>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <br/>
                <p><a href="<c:url value='/employees/edit?id=${employee.id}'/>"   style="color:#9370DB"><font size="3">このスタッフ情報を編集する</font></a></p>
            </c:when>
            <c:otherwise>
                <h2>Not found</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/employees/index'/>"  style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
    </c:param>
</c:import>