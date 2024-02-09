<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>Registration Form</h1>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<div class="form-group">
				<label for="uname">First name:</label> <input type="text"
					class="form-control" id="firstName" placeholder="firstName"
					name="firstName" required>
			</div>
			
			<div class="form-group">
				<label for="uname">Last name:</label> <input type="text"
					class="form-control" id="lastName" placeholder="lastName"
					name="lastName" required>
			</div>
			
			<div class="form-group">
				<label for="uname">Email:</label> <input type="text"
					class="form-control" id="email" placeholder="Email"
					name="email" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>
			
			<div class="form-group">
				<label for="uname">Confirm password:</label> <input type="password"
					class="form-control" id="rePassword" placeholder="Password"
					name="rePassword" required>
			</div>

			<button type="submit" class="btn btn-primary">Register</button>

		</form>
	</div>
</body>
</html>