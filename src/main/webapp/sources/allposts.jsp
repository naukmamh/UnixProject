<%@include file="header.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05-Jun-17
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Some text
<div class="col-xs-10 col-xs-offset-1 postplace">
    <div class="row">
        <c:forEach items="${posts}" var="post" >
            <div class="col-md-6  center" id="post">
                <div class="thumbnail">
                    <c:forEach items="${post.images}" var="img">
                    <div class="photoofplace">

                        <img src="${img.url}" alt="" class="img-responsive  center">
                    </div>
                    </c:forEach>
                    <div class="caption">
                        <div class="description">${post.description}</div>
                        <div class="linkondetail text-center"><a href="postDetails.jsp"> Show more  </a> </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</div>
</body>
</html>
