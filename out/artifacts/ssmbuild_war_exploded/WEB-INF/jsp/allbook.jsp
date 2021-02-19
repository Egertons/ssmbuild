<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">

            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="page-header">
                        <h1>
                           <small>书籍列表-------------显示所有书籍</small>
                        </h1>
                    </div>
                </div>
            </div>

            <div class="row ui-helper-clearfix">
                <div class="col-md-12 flex-md-column">
                    <table class="table-hover table-striped">
                        <thead>
                            <tr>
                                <th>书籍编号</th>
                                <th>书籍名称</th>
                                <th>书籍数量</th>
                                <th>书籍详情</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="book" items="${list}">
                                <tr>
                                    <td>${book.bookID}</td>
                                    <td>${book.bookName}</td>
                                    <td>${book.bookCounts}</td>
                                    <td>${book.detail}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
