Joined Inputs
=================

Simple coffee script to make several inputs act like one.
For example for card or phone number input in your form.

Requirements
----------------

Script uses some jQuery functions. So require this library before using.
And of course you need [coffescript](http://jashkenas.github.com/coffee-script/) compiler to make js-file.

Usage
---------------

1. Include javascript file in header of your page
2. Wrap inputs you want to act like one in html element
3. Use function with this element selector

Something like this

*HTML*

    <div id='some-inputs'>
      <input type="text" maxlength="3" />
      <input type="text" maxlength="5" />
      <input type="text" maxlength="2" />
      <input type="text" maxlength="8" />
    </div>

*JS*

    joinInputs('#some-inputs')


That's all folks
