jQuery ->
	$(document).on 'click', 'div .remove_fields', (event) ->
		$(this).prev('input[type=hidden]').val(true)
		$(this).parent('div').remove()
		event.preventDefault()
		console.log("click remove")

	$(document).on 'click', 'form .add_fields', (event) ->
		time = new Date().getTime()
		regexp = new RegExp($(this).data('id'), 'g')
		$(this).before($(this).data('fields').replace(regexp, time))
		event.preventDefault()
		console.log("click add")

	# $(document).on 'click', '.answer_click', (event) ->
	# 	$(this).prev('input[type=hidden]').val(1)
	# 	event.preventDefault()
	# 	console.log("click answer")

	# 