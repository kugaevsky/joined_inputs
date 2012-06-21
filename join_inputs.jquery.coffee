( ($) ->

	$.fn.joinInputs = () ->

			@.bind
				keyup: (e) -> doKeyAction @, e, 'after'
				keydown: (e) -> doKeyAction @, e, 'before'

			currentInput = @.get(0)

			groupedInputs = @

			setInput = (i) ->
				currentInput = groupedInputs.get(i)
				currentInput.focus()

			doKeyAction = (firedInput, e, fire) ->
				currentInputIndex = $.inArray firedInput, groupedInputs
				currentInput = groupedInputs.get(currentInputIndex)
				charCode = e.keyCode || e.which
				switch fire
					when 'after'
						switch charCode
							# left
							when 37
								setInput(currentInputIndex - 1) if currentInputIndex > 0 and currentInput.selectionStart == 0
							# right
							when 39
								setInput(currentInputIndex + 1) if currentInputIndex < (groupedInputs.length - 1) and currentInput.selectionEnd == currentInput.value.length

							# other key
							else
								if (firedInput.value.length == firedInput.maxLength and
								firedInput.selectionEnd == firedInput.value.length and currentInputIndex < (groupedInputs.length - 1) and not (charCode in [9, 16, 38, 40])
								)
									setInput(currentInputIndex + 1)
					when 'before'
						switch charCode
							# backspace
							when 8
								if currentInputIndex > 0 and currentInput.selectionStart == 0
									setInput(currentInputIndex - 1)
									currentInput.selectionStart = currentInput.value.length
							# home
							when 36
								setInput(0)
							# end
							when 35
								setInput(groupedInputs.length - 1)
							else
								if (currentInput.value.length == currentInput.maxLength and not (charCode in [9, 16, 38, 40, 37, 39, 8, 36, 35]))
									e.stopPropagation()
									e.preventDefault()
)(jQuery)


