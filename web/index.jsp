<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      #title{
        height: 300px;
        text-align: center;
        margin-top: 100px;
      }
      #title a{
        letter-spacing: 20px;
        font-size: 20px;
        font-weight: bolder;
        margin-left: auto;
        margin-right: auto;
        padding-left: 30px;
        padding-right: inherit;
        text-decoration: none;
        color: #FFCCCC;
        border-radius: 5px;
        background-color: #FF9999;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md"></div>
        <div class="col-md" id="title">
          <a href="${pageContext.request.contextPath}/book/admin">
            进入书籍管理中心
          </a>
        </div>
        <div class="col-md"></div>
      </div>
    </div>
  </body>
</html>