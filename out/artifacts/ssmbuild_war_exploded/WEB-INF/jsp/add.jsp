<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>新增书籍</title>
        <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            #first{
                margin-top: 25px;
                text-align: center;
            }
            #buttHead{
                letter-spacing: 3px;
            }
            #buttHead a{
                color: azure;
                text-decoration: none;
            }
            #Title{
                letter-spacing: 5px;
                margin-right: auto;
                margin-left: auto;
            }
            #second{
                margin-top: 25px;
            }
            #second button{
                position: absolute;
                left: 0;
                right: 0;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row" id="first">
                <div class="col-md" id="buttHead">
                    <button type="button" class="btn btn-warning">
                        <a href="${pageContext.request.contextPath}/book/admin">返回主页</a>
                    </button>
                </div>
                <div class="col-md" id="Title">
                    <h3>新增书籍</h3>
                </div>
                <div class="col-md"></div>
            </div>
            <div class="row" id="second">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form action="${pageContext.request.contextPath}/book/add" method="post">
                        <div class="form-group">
                            <label>书籍名称：</label>
                            <input type="text" name="bookName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>书籍数量：</label>
                            <input type="text" name="bookCounts" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>书籍描述：</label>
                            <input type="text" name="detail" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-success">提交添加</button>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </body>
</html>
