# Joined Inputs  [![endorse](http://api.coderwall.com/kugaevsky/endorsecount.png)](http://coderwall.com/kugaevsky)

Simple jQuery plugin to make several inputs act like one.
For example for card or phone number fields in your form.

1. Caret jumps to next input if maximum length of current input reached (autotab). Length is taken from `maxlength` attribute of each input. Also works with `type='number'` inputs.
2. Caret jumps to next or previous input on `right/left arrow keys` if caret at the end/beginning of current field.
3. Delete chars with `Backspace` works through all joined fields.
4. `Home` makes caret jump to first position in first input, `End` — to last position in last input.
5. Correctly works with `Tab` and `Shift+Tab`.


## Demo

Here is a [small demo](http://kugaevsky.github.com/joined_inputs/)


## Requirements

It's jQuery plugin so it require jQuery library for using.


## Usage

1. Include javascript file in header of your page
2. Use function with jQuery selector

Something like this

*HTML*

    <div id='some-inputs'>
      <input type="text" maxlength="3" />
      <input type="text" maxlength="5" />
      <input type="text" maxlength="2" />
      <input type="text" maxlength="8" />
    </div>

*JS*

    $('#some-inputs input').joinInputs()


## Contribution

Feel free to request your changes to be pulled in.
But only in [coffescript](http://jashkenas.github.com/coffee-script/).


## License

Distributed under [ MIT license ]( https://github.com/kugaevsky/joined_inputs/wiki/Mit-license )

2011 &minus; 2012 &copy; Nick Kugaevsky