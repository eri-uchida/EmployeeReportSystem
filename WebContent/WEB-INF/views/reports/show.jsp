<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${report != null}">
                <br/>
                <font size="5">${report.title}</font><br/><br/>

                <table class="table table-primary">
                    <tbody>
                       <tr>
                         <th scope="col">氏名</th>
                            <td><c:out value="${report.employee.name}"/></td>
                       </tr>

                       <tr>
                         <th scope="col">日付</th>
                            <td><fmt:formatDate value="${report.report_date}" pattern="yyyy年MM月dd日"/></td>
                       </tr>

                       <tr>
                         <th scope="col">本文</th>
                            <td>
                               <pre></pre><c:out value="${report.content}"/></pre>
                            </td>
                       </tr>

                       <tr>
                         <th>いいね・見たよ</th>
                                <td>
                                    <fmt:formatDate value="${reaction.type}" pattern="yyyy-MM-dd" />
                                    <span id="good">
                                        <img src="<c:url value='https://i.gyazo.com/714415dfd02cae3b3f78e147ee2b9e98.png'/>" width="35px"
                                            height="35px">
                                        <span id="good-count">
                                            <c:out value="${goodCount}" />
                                        </span>
                                    </span>
                                    <span id="mitayo">
                                        <img src="<c:url value='https://i.gyazo.com/7574c701e1d83a7a7ba77737284388fd.png'/>" width="35px"
                                            height="35px">
                                        <span id="mitayo-count">
                                            <c:out value="${mitayoCount}" />
                                        </span>
                                    </span>
                                </td>
                         </tr>

                       <tr>
                         <th scope="col">登録日時</th>
                            <td>
                              <fmt:formatDate value="${report.created_at}" pattern="yyyy年MM月dd日 HH:mm:ss"/>
                            </td>
                       </tr>

                       <tr>
                         <th scope="col">更新日時</th>
                            <td>
                              <fmt:formatDate value="${report.updated_at}" pattern="yyyy年MM月dd日 HH:mm:ss"/>
                            </td>
                       </tr>
                    </tbody>
                </table>
                <input type="hidden" id="id" value="${report.id}" />
                <c:if test="${sessionScope.login_employee.id == report.employee.id}">
                    <p><a href="<c:url value="/reports/edit?id=${report.id}"/>" style="color:#9370DB"><font size="3">この記事を編集する</font></a></p>
                </c:if>
            </c:when>
            <c:otherwise>
                <h2>Not found</h2>
            </c:otherwise>
        </c:choose>
            <p><a href="<c:url value="/reports/index"/>"  style="color:#9370DB"><font size="3">一覧に戻る</font></a></p>
            <br/>

            <script>
        $(function() {
            $('#good').on('click', function() {
                let goodType = "1";
                let count = reaction(goodType);
                if (count != null) {
                    console.log(count);
                    $('#good-count').text(count);
                }
            });
            $('#mitayo').on('click', function() {

                let mitayoType = "2";
                let count = reaction(mitayoType);
                if (count != null) {
                    console.log(count);
                    $('#mitayo-count').text(count);
                }
            });
            function reaction(type){
                let request = {
                    report_id : $('#id').val(),
                    type : type
                };
                let count = null;
                //ajaxでservletにリクエストを送信
                $.ajax({
                  type    : "POST",
                  url     : "/Staff-Blog/reaction",
                  data    : request,
                  async   : false,
                  dataType: "json"
                }).done(function(data, status, xhr) {
                  //通信が成功した場合に受け取るメッセージ
                  count = data["count"];

                }).fail(function(xhr, status, error) {
                  // エラーの場合処理
                  alert("エラーが発生しました。");
                });
                return count;
            }
        });
       </script>

    </c:param>
</c:import>