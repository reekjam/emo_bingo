jQuery ->
	$(document).on 'click', 'table.card td', ->
		if $(this).attr('class') == 'unclicked'
			$(this).removeClass 'unclicked'
			$(this).addClass 'clicked'
		else
			$(this).removeClass 'clicked'
			$(this).addClass 'unclicked'

	$(document).on 'click', 'table.card td a', (e) ->
		e.preventDefault()