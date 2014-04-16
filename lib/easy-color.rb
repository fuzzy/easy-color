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

class String

  # Normal colors
  def black;       colorize(self, "\e[0m\e[30");     end
  def red;         colorize(self, "\e[0m\e[31");     end
  def green;       colorize(self, "\e[0m\e[32");     end
  def yellow;      colorize(self, "\e[0m\e[33");     end
  def blue;        colorize(self, "\e[0m\e[34");     end
  def purple;      colorize(self, "\e[0m\e[35");     end
  def cyan;        colorize(self, "\e[0m\e[36");     end
  def white;       colorize(self, "\e[0m\e[37");     end

  # Fun stuff
  def clean;       colorize(self, "\e[0");           end
  def bold;        colorize(self, "\e[1");           end
  def underline;   colorize(self, "\e[4");           end
  def blink;       colorize(self, "\e[5");           end
  def reverse;     colorize(self, "\e[7");           end
  def conceal;     colorize(self, "\e[8");           end

  # Blanking
  def clear_scr;   colorize(self, "\e[2", mode="J"); end

  # Placement
  def place(line, column)
    colorize(self, "\e[#{line};#{column}", mode='f')
  end

  def save_pos;    colorize(self, "\e[", mode='s');  end
  def return_pos;  colorize(self, "\e[", mode='u');  end

  def colorize(text, color_code, mode='m')
    "#{color_code}#{mode}#{text}\e[0m"
  end

end
