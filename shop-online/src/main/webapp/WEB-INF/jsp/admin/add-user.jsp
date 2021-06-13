<%@ include file="../fragments.jsp"%>
	<div class="container">
		<div
			style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-user"></i> Sign Up
				</div>
				<div class="card-block" style="padding: 24px;">
					<form:form action="/signup" method="post" modelAttribute="user">
						<fieldset>
						
							<div class="form-group">
								<label for="firstName">FirstName</label> 
								<form:input type="text" required="required"
									class="form-control" id="firstName" name="firstName" path="firstName"
									placeholder="First Name"/>
							</div>
							
							<div class="form-group">
								<label for="lastName">SecondName</label> <form:input type="text" required="required"
									class="form-control" id="lastName" name="lastName" path="lastName"
									placeholder="Last Name"/>
							</div>
							
							<div class="form-group">
								<label for="email">Email</label> <form:input type="email" required="required"
									class="form-control" id="email" name="email" path="email"
									placeholder="Email"/>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <form:input type="password" required="required"
									class="form-control" id="password" name="password" path="password"
									placeholder="Password"/>
							</div>
							
							<div class="form-group">
								<label for="role">Role</label> <form:input type="text" required="required"
									class="form-control" id="role" name="role" path="role"
									placeholder="Role"/>
							</div>

							<div class="form-actions" style="margin-top: 12px;">
								<button type="submit" class="btn btn-success">Sign Up</button>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
