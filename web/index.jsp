<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      #title a{
        width: 180px;
        height: 38px;
        letter-spacing: 50px;
        font-size: 20px;
        font-weight: bolder;
        padding-top: 120px;
        text-align: center;
        text-decoration: none;
        color: aqua;
        padding-left: 200px;
        margin: 100px auto;
      }
    </style>
  </head>
  <body>
    <div id="title">
      <a href="${pageContext.request.contextPath}/book/all">
          进入书籍展示页面
      </a>
    </div>
    <div class="row">
      <div class="col-md-4 column">
        <button>
          <a href="${pageContext.request.contextPath}/book/add">新增书籍</a>
        </button>
      </div>
    </div>
  </body>
</html>