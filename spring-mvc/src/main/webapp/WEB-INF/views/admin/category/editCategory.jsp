<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

@using (Html.BeginForm("Edit", "Category", FormMethod.Post))
{
    @Html.AntiForgeryToken()

    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">Sửa</h3>
            @Html.ValidationSummary(false, "", new { @class = "error" })
            <div class="success">@ViewData["success"]</div>
        </div>
        @Html.ValidationSummary(true, "", new { @class = "text-danger" })
        @Html.HiddenFor(model => model.catId)
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name">Danh mục sản phẩm</label>
                        @Html.EditorFor(model => model.catName, new { htmlAttributes = new { @class = "form-control" } })
                    </div>
                    <!-- /.form-group -->
                </div>
                <!-- /.col -->
                <!-- /.col -->
            </div>
            <div class="box-footer">
                <input type="submit" class="btn btn-primary" value="Sửa" />
            </div>
            <div>
                @Html.ActionLink("<<<Quay lại", "Categorylist", "Category")
            </div>
            <!-- /.row -->
        </div>
        <!-- /.box-body -->

    </div>

}


