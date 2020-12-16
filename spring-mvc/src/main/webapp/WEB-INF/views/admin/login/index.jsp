<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value='/assets/admin/plugins/fontawesome-free/css/all.min.css'/>">
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css/>">
<link rel="stylesheet"
	href="<c:url value='/assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/admin/dist/css/admin/adminlte.min.css'/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" />

</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<b>Admin</b>LTE
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign in to start your session</p>

				<form:form action="login" method="POST" modelAttribute="admin">
					<div class="input-group mb-3">
						<form:input type="text" class="form-control" placeholder="UserName" path="AdminUsername"/>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<form:input type="password" class="form-control" placeholder="Password" path="AdminPassword"/>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember"> <label
									for="remember"> Remember Me </label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Sign
								In</button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>

				<!-- /.social-auth-links -->

				<p class="mb-1">
					<a href="forgot-password.html">I forgot my password</a>
				</p>

			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<!-- Bootstrap 4 -->

	<script
		src="<c:url value='/assets/admin/plugins/admin/jquery/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/assets/admin/plugins/admin/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/assets/admin/plugins/admin/adminlte.min.js'/>"></script>

</body>
</html>
