<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
 <div class="box-body">
 

        @using (Html.BeginForm("Categorylist", "Category", FormMethod.Get))
        {
            <div class="row">
                <div>
                    <div class="new_input-form">
                        <input type="text" value="@ViewBag.searchString" name="searchString" />
                    </div>
                    <div>
                        <button type="submit">Tìm kiếm</button>
                    </div>
                </div>
            </div>
        }
        <a href="Categoryadd">Thêm mới</a>
        <div class="card-block table-border-style">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Tên danh mục</th>
                            <th>Xử lý</th>
                        </tr>
                    </thead>
                    <tbody>
                      	<c:forEach var="item" items="${model.listResult}">
                            <tr>
                                
                                <th scope="row">1</th>
                                <td>${item.}</td>
													
                                <td>
                                    <a href="/Admin/Category/Edit/@item.catId">
                                        <span class="glyphicon glyphicon-edit">
                                        </span>
                                    </a>

                                    <a href="/Admin/Category/Delete/@item.catId" onclick="return confirm('Bạn chắc chắn muốn xóa?')">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </td>

                            </tr>
                           
                        }
                       

                    </tbody>
                </table>
                <div class="col-sm-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                        @Html.PagedListPager(Model, page => Url.Action("Categorylist", new { page, @searchString = @ViewBag.searchString }))
                    </div>
                </div>
            </div>
        </div>
    </div>


