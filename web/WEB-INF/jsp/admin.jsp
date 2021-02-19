<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>书籍管理中心</title>
        <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            #head{
                letter-spacing: 5px;
                margin-top: 25px;
                margin-bottom: 25px;
            }
            #bottomF{
                text-align: center;
            }
            #bottom{
                margin-left: auto;
                margin-right: auto;
            }
            #bottom a{
                color: aliceblue;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md"></div>
                <div class="col-md">
                    <div class="page-header" id="head">
                        <h1>
                            书籍列表
                           <small>--显示所有书籍</small>
                        </h1>
                    </div>
                </div>
                <div class="col-md"></div>
            </div>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>书籍编号</th>
                                <th>书籍名称</th>
                                <th>书籍数量</th>
                                <th>书籍详情</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="book" items="${list}">
                                <tr>
                                    <td>${book.bookID}</td>
                                    <td>${book.bookName}</td>
                                    <td>${book.bookCounts}</td>
                                    <td>${book.detail}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}" style="text-decoration: none">修改</a>
                                        &nbsp; | &nbsp;
                                        <a href="${pageContext.request.contextPath}/book/delete/${book.bookID}" style="text-decoration: none">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row" id="bottomF">
                <div class="col-md" id="bottom">
                    <button type="button" class="btn btn-primary">
                        <a href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                    </button>
                </div>
            </div>
        </div>
    </body>
</html>
