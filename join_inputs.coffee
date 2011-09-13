$(->

	joinInputs = (selector) ->

		groupedInputs = $("#{selector} input")

		setInput = (i) ->
			currentInput = groupedInputs.get(i)
			currentInput.focus()

		groupedInputs.bind
			keyup: (e) ->
				currentInputIndex = $.inArray @, groupedInputs
				currentInput = groupedInputs.get(currentInputIndex)
				charCode = e.keyCode || e.which
				switch charCode
					# left
					when 37
						setInput(--currentInputIndex) if currentInputIndex > 0 and currentInput.selectionStart == 0
					# right
					when 39
						setInput(++currentInputIndex) if currentInputIndex < (groupedInputs.length - 1) and currentInput.selectionEnd == currentInput.value.length
					# other key
					else
						setInput(++currentInputIndex) if @.value.length == @.maxLength and @.selectionEnd == @.value.length

			keydown: (e) ->
				currentInputIndex = $.inArray @, groupedInputs
				currentInput = groupedInputs.get(currentInputIndex)
				charCode = e.keyCode || e.which
				# backspace
				setInput(--currentInputIndex) if charCode == 8 and currentInputIndex > 0 and currentInput.selectionStart == 0

)