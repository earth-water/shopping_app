<%@ include file="../fragments.jsp"%>
	<div class="container">
		<div
			style="width: 600px; margin-left: auto; margin-right: auto; margin-top: 24px; padding: 24px;">
			<div class="card">
				<div class="card-block" style="padding: 24px;">
					<form:form action="/manager/add-category" method="post" modelAttribute="category">
						<fieldset>
							<div class="form-group">
								<form:input type="hidden" value="${Category.categoryId}" name="categoryId" path="categoryId"/>
								<label for="categoryName">Category Name</label> 
								<form:input required="required"
									type="text" class="form-control" id="categoryName" path="categoryName"
									name="categoryName"  value="${Category.categoryName}"/>
							</div>

							<div class="form-actions" style="margin-top: 12px;">
								<button type="submit" class="btn btn-success">ADD</button>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>