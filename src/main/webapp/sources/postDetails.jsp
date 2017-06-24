<%--
  Created by IntelliJ IDEA.
  User: maria
  Date: 18.06.2017
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/sources/libraries/css/postDetails.css"/>">
<div class="row main">
    <div class="mapa">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d325515.6816494169!2d30.252504313194645!3d50.40213675084257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4cf4ee15a4505%3A0x764931d2170146fe!2z0JrQuNGX0LI!5e0!3m2!1suk!2sua!4v1495878890403" width="100%" height="450" frameborder="0" style="border:0" ></iframe>
    </div> <hr>


    <div class="col-sm-10 col-sm-offset-1 col-xs-12 ">  <span class="glyphicon glyphicon-remove" title="Remove Modal"> </span>
        <span class="glyphicon glyphicon-pencil" title="Edit Modal"> </span></div>

    <div class="secondblock col-sm-10 col-sm-offset-1 col-xs-12 ">

        <h4 class="text-center"><b>DESCRIPTION</b></h4>
        <p> <h4>${post.name}</h4>${post.description}</p>

        <hr><h4 class="text-center"><b>GALLERY</b></h4>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">


    <c:forEach items="${post.images}" var="img">

        <div class="item">
            <img src="${img.url}" alt="" class="img-responsive   img-rounded">
        </div>>
    </c:forEach>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" style="color:black;"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" style="color:black;"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>>
    <%@include file="footer.jsp"%>
