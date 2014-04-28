################################################################################
# Copyright (c) 2014, Mike 'Fuzzy' Partin <fuzzy@fu-manchu.org>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without 
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation 
# and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors
# may be used to endorse or promote products derived from this software without
# specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
################################################################################

$color     = {
  :black   => 30,    :red       => 31,    :green     => 32,
  :yellow  => 33,    :blue      => 34,    :purple    => 35,
  :cyan    => 36,    :white     => 37
}
$attrs     = {
  :clean   => 0,     :bold      => 1,     :underline => 4,
  :blink   => 5,     :reverse   => 7,     :conceal   => 8
}

class String

  def valid(args)
    if args.keys.include? :color and $color.keys.include? args[:color]
      true
    elsif args.keys.include? :attr and $attrs.keys.include? args[:attr]
      true
    else
      false
    end
  end      

  def fg(color)
    "\033[#{$color[color]}m#{self}\033[0m" if valid(:color => color)
  end

  def bg(color)
    "\033[#{($color[color]+10)}m#{self}\033[0m" if valid(:color => color)
  end

  def attr(attr)
    "\033[#{($attrs[attr])}m#{self}\033[0m" if valid(:attr => attr)
  end

  def method_missing(m, *args, &block)
    if $color.keys.include?(m)
      fg(m)
    elsif $attrs.keys.include?(m)
      attr(m)
    else
      raise NoMethodError, "Undefined method '#{m.inspect}'."
    end
  end

end

