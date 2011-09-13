(function() {
  $(function() {
    var joinInputs;
    return joinInputs = function(selector) {
      var groupedInputs, setInput;
      groupedInputs = $("" + selector + " input");
      setInput = function(i) {
        var currentInput;
        currentInput = groupedInputs.get(i);
        return currentInput.focus();
      };
      return groupedInputs.bind({
        keyup: function(e) {
          var charCode, currentInput, currentInputIndex;
          currentInputIndex = $.inArray(this, groupedInputs);
          currentInput = groupedInputs.get(currentInputIndex);
          charCode = e.keyCode || e.which;
          switch (charCode) {
            case 37:
              if (currentInputIndex > 0 && currentInput.selectionStart === 0) {
                return setInput(--currentInputIndex);
              }
              break;
            case 39:
              if (currentInputIndex < (groupedInputs.length - 1) && currentInput.selectionEnd === currentInput.value.length) {
                return setInput(++currentInputIndex);
              }
              break;
            default:
              if (this.value.length === this.maxLength && this.selectionEnd === this.value.length) {
                return setInput(++currentInputIndex);
              }
          }
        },
        keydown: function(e) {
          var charCode, currentInput, currentInputIndex;
          currentInputIndex = $.inArray(this, groupedInputs);
          currentInput = groupedInputs.get(currentInputIndex);
          charCode = e.keyCode || e.which;
          if (charCode === 8 && currentInputIndex > 0 && currentInput.selectionStart === 0) {
            return setInput(--currentInputIndex);
          }
        }
      });
    };
  });
}).call(this);
