
	$("button[name='delete']").click(function() {
		id = this.value;
		console.log(id);
		if(confirm("삭제하시겠습니까?")){
			$.ajax({
				url : '/team/delete/' + id,
				type : 'DELETE'
			});
			$('#card-drag-area').load(document.URL +  ' #card-drag-area');
// 			location.reload();
		} else return;

	});
	
	