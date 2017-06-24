<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15-Mar-17
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>


<c:if test="${!goods.isEmpty()}">
    <div class="panel panel-primary clearfix">
        <div class="panel-heading clearfix">
            <h3 class="panel-title">Goods</h3>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <button type="button" class="btn btn-default btn-xs pull-right"
                        data-target="#addGoodModal" data-toggle="modal">
                    Add good
                </button>
                 </sec:authorize>
</div>
<table class="table table-striped table-bordered goods">
    <tr>
        <th>Type</th>
        <th>Parameters</th>
        <th>Fabric</th>
        <th>Binding</th>
        <th>Price</th>
    </tr>

    <c:forEach items="${goods}" var="good">
        <tr>
            <td><b> <a href="/good/${good.id}">
                    ${good.goods_type.name} </a></b>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <div class="btn btn-xs "
                         type='button' data-toggle="modal"
                         data-target="#editGoodModal"
                         onclick="setGood(${good.id})">
                        <span class="glyphicon glyphicon-edit"></span>
                    </div>
                    <div id="good-delete-${good.id}" class="btn btn-xs good-delete-btn"
                         type='button'>
                        <span class="glyphicon glyphicon-remove "></span>
                    </div>
               </sec:authorize>
                <sec:authorize access="hasRole('ROLE_USER')">
                    <div id="${good.id}-${userId}" class="btn btn-xs order-add-btn"
                         type='button'>
                        <span class="glyphicon glyphicon-plus "></span>
                    </div>
                </sec:authorize>

            </td>
            <td>
                    ${good.width} X ${good.length}
            </td>
            <td>
               ${good.fabric.name}

            </td>
            <td>
                    ${good.binding.name}
            </td>
            <td>
                    ${good.price}
            </td>

        </tr>

    </c:forEach>
</table>
</div>
</c:if>

<c:if test="${goods.isEmpty()}">
<h1>No  goods</h1>
</c:if>


<div id="editGoodModal" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static">
<div class="modal-dialog" role="document">
<div class="modal-content">
    <div class="modal-header">
        <button class="close" type="button" data-dismiss="modal"><span
                class="glyphicon glyphicon-remove"></span></button>
        <h4 class="modal-title">Good</h4>
    </div>
    <div class="modal-body">
        <form>
            <div class="form-group">

                <label >Good type:</label>
                <select id="editgoodType_id"style="width: 100px !important;">
                    <c:forEach items="${goods_types}" var="good_type">
                        <option value="${good_type.id}">${good_type.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="editgoodWidth">Width:</label>
                <input type="text" class="form-control" id="editgoodWidth" >
                <label for="editgoodLength">Length:</label>
                <input type="text" class="form-control" id="editgoodLength" >
                <label for="editgoodCanvasQuan">Canvas quantity:</label>
                <input type="text" class="form-control" id="editgoodCanvasQuan" >
            </div>
            <div class="form-group">
                <label >Fabric:</label>
                <select id="editgoodFabric_id" style="width: 100px !important;">
                    <c:forEach items="${fabrics}" var="fabric">
                        <option value="${fabric.id}">${fabric.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label >Binding:</label>
                <select id="editgoodBinding_id" style="width: 100px !important;">
                    <c:forEach items="${bindings}" var="binding">
                        <option value="${binding.id}">${binding.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="editgoodPrice">Price:</label>
                <input type="text" class="form-control" id="editgoodPrice" >
            </div>
            <br>

            <button id="edit-good-btn" type="button" class="btn btn-primary"  >Save</button>
        </form>
    </div>
</div>
</div>
</div>



<div id="addGoodModal" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static">
<div class="modal-dialog" role="document">
<div class="modal-content">
    <div class="modal-header">
        <button class="close" type="button" data-dismiss="modal"><span
                class="glyphicon glyphicon-remove"></span></button>
        <h4 class="modal-title">Good</h4>
    </div>
    <div class="modal-body">
        <form>
            <div class="form-group">

                <label >Good type:</label>
                <select id="addgoodType_id"style="width: 100px !important;">
                    <c:forEach items="${goods_types}" var="good_type">
                        <option value="${good_type.id}">${good_type.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="addgoodWidth">Width:</label>
                <input type="text" class="form-control" id="addgoodWidth" >
                <label for="addgoodLength">Length:</label>
                <input type="text" class="form-control" id="addgoodLength" >
                <label for="addgoodCanvasQuan">Canvas quantity:</label>
                <input type="text" class="form-control" id="addgoodCanvasQuan" >
            </div>
            <div class="form-group">
                <label >Fabric:</label>
                <select id="addgoodFabric_id" style="width: 100px !important;">
                <c:forEach items="${fabrics}" var="fabric">
                    <option value="${fabric.id}">${fabric.name}</option>
                </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label >Binding:</label>
                <select id="addgoodBinding_id" style="width: 100px !important;">
                    <c:forEach items="${bindings}" var="binding">
                        <option value="${binding.id}">${binding.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="addgoodPrice">Price:</label>
                <input type="text" class="form-control" id="addgoodPrice" >
            </div>
            <br>

            <button id="add-good-btn" type="button" class="btn btn-primary"  >Save</button>
        </form>
    </div>
</div>
</div>
</div>

<%@include file="footer.jsp"%>
