jQuery ->
	$('form').on 'click', '.remove-fields', (event) -> 
	$(this).prev('input[type=hidden]').val('1')
	$(this).closest('fieldset').hide()
	event.preventDefault()