$(document).ready(function(){
	// modal hack
	$("[data-toggle='modal'][data-modal-id^=#]").each(function(){
		$(this).attr("href", $(this).attr("data-modal-id"));
	});
});