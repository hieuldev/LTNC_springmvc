<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link href="<c:url value='/assets/admin/dist/css/stylelogin.css'/>" rel="stylesheet" />
</head>
<body>
    <style>
    </style>
    <div class="container">
        <section id="content">  
        <form>    
                <h1>Admin Login</h1>
                
                <div>
                <input type="text"  placeholder = "Username" />                  
                </div>
                <div>
                  <input type="password"  placeholder = "Password" />                     
                </div>              
                <div>
                    <input type="submit" value="Log in" />
                </div>
          </form>   
            <div class="button">
                <p>Cửa hàng linh phụ kiện máy tính</p>
            </div><!-- button -->
        </section><!-- content -->
    </div><!-- container -->
</body>
</html>