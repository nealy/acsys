<form id="groupingForm" role="form" action="grouping!saveGrouping">
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="group-name">Grouping Name</label>
				<input hidden=true id="group-id" name="grouping.id" value="${grouping.id!}"/>
				<input type="text" class="form-control" id="group-name" name="grouping.name" value="${grouping.name!}" disabled />
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="creater-name">Creater</label>
				<input hidden=true id="creater-id" name="grouping.creatorId" value="${grouping.creatorId!}"/>
				<input type="text" class="form-control" id="creater-name" name="grouping.creatorName" value="${grouping.creatorName!currentUser.name!}" disabled>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="create-date">Create Date</label>
				<input type="text" class="form-control" id="create-date" name="grouping.created" value="${(grouping.created)?string("MM/dd/yyyy")}" disabled>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="attendant">Members</label>
		<input hidden=true id="group-memberNum" name="grouping.memberNum" value="${grouping.memberNum!}"/>
		<div class="row">
			<div class="col-md-5">
				<select id="attendant" class="form-control" size="7" multiple disabled>
					<#assign attendants = ""/>
					<#list users as user>
						<option value="${user.id!}">${user.name!}</option>
						<#assign attendants = attendants + '${user.id!}' + ',' />
					</#list>
				</select>
			</div>
			<div class="col-md-2">
				<button id="btn-right" type="button" class="btn option-btn btn-default btn-sm btn-block" disabled>
					<span class="glyphicon glyphicon-chevron-right"></span>
				</button>
				<button id="btn-all-right" type="button" class="btn option-btn btn-default btn-sm btn-block" disabled>
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="glyphicon glyphicon-chevron-right"></span>
				</button>
				<button id="btn-left" type="button" class="btn option-btn btn-default btn-sm btn-block" disabled>
					<span class="glyphicon glyphicon-chevron-left"></span>
				</button>
				<button id="btn-all-left" type="button" class="btn option-btn btn-default btn-sm btn-block" disabled>
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="glyphicon glyphicon-chevron-left"></span>
				</button>
			</div>
			<div class="col-md-5">
				<select id="others" class="form-control" size="7" multiple disabled>
					<#list allUsers as user>
						<option value="${user.id!}">${user.name!}</option>
					</#list>
				</select>
			</div>
			<input id="oldUserIds" value="${attendants!}" hidden=true />
			<input id="addUserIds" name="addUserIds" value="" hidden=true />
			<input id="delUserIds" name="delUserIds" value="" hidden=true />
		</div>
	</div>
	<div class="form-group">
		<label for="comment">Comment</label>
		<textarea class="form-control" id="comment" name="grouping.remark" rows="2" disabled>${grouping.remark!}</textarea>
	</div>
	<div class="btn-group2 hide">
		<button id="save" type="button" class="btn btn-primary">Save</button>
		<button id="cancel" type="button" class="btn btn-link">Cancel</button>
	</div>
	<script type="text/javascript">
		$(function() {
			moveOption();
			$('#save').on('click', function() {
				$("#save").disabledBtn();
				if(validateForm()) {
					setAttendants();
					// update
					if($('#group-id').val() != null && $('#group-id').val() != undefined && $('#group-id').val() != "") {
						$.ajax({
							async: false,
							cache: false,
							type: "POST",
							url: "/acsys/grouping!saveGrouping",
							data: $('#groupingForm').serialize(),
							error: function(request) {
							},
							success: function(msg) {
								$('.add-btn, .edit-btn, .delete-btn').removeClass("hide");
								$(".content-form").html(msg);
								var li = findActiveGrouping();
								$(li).children().get(0).text = $('#group-name').val();
							}
						});
					// new
					} else {
						$('#groupingForm').submit();
					}
				}
			});
			$('#cancel').on('click', function(){
				var li = findActiveGrouping();
				$(li).click();
			});
		});
	</script>
</form>