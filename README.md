[![Gem Version](https://badge.fury.io/rb/easy-color.svg)](http://badge.fury.io/rb/easy-color)

easy-color
==========

A simple monkeypatch for String that adds support for standard ASCII escape sequences, including color, video attributes, and cursor placement.

Usage examples:

```ruby
require 'easy-color'

puts "#{'**'.bold.cyan.bg(:yellow)} yay backgrounds!"
puts "#{'**'.bold.cyan} OOH I just made a prompt!"
puts "IMPORTANT!!".bold.underline.red
```

Methods
=======

Colors
---

* black
* red
* green
* yellow
* blue
* purple
* cyan
* white

Attributes
---

* clean
* bold
* underline
* blink
* reverse
* conceal

