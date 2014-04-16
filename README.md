easy-color
==========

A simple monkeypatch for String that adds support for standard ANSI escape sequences, including color, video attributes, and cursor placement.

Usage examples:

```ruby
require 'easy-color'

puts "#{'**'.bold.cyan} OOH I just made a prompt!"
puts "IMPORTANT!!".bold.underline.red
```