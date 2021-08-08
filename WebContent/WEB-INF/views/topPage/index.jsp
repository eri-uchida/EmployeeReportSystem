<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush!=null}">
            <div id="flush_success">
            <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <br/>
        <font size="4">【自分の作成したブログ一覧】</font>

        <table class="table table-sm table-info table-hover table-striped">
            <tbody>
                <c:forEach var ="report" items="${reports}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td><a href="<c:url value='reports/show?id=${report.id}'/>" >${report.title}</a></td>
                        <td><fmt:formatDate value='${report.report_date}' pattern='yyyy年MM月dd日' /></td>
                        <td><c:out value="${report.employee.name}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div id="pagination">
            (全 ${reports_count} 件)<br/>

            <c:forEach var="i" begin="1" end="${((reports_count -1)/15)+1}" step="1">
                <c:choose>
                    <c:when test="${i==page}">
                        <c:out value="${i}"/>&nbsp;
                    </c:when>

                <c:otherwise>
                    <a href="<c:url value='/?page=${i}'/>"><c:out value="{i}"/></a>&nbsp;
                </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>

        <p><a href="<c:url value='/reports/new'/>" style="color:#9370DB"><font size="3">新規ブログ投稿</font></a></p>
    </c:param>
</c:import>