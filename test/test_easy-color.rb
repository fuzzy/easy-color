require 'test/unit'
require 'easy-color'

class EasycolorTest < Test::Unit::TestCase

  def test_black
    assert_nothing_raised do
      a = "".black
    end
  end

  def test_red
    assert_nothing_raised do
      a = "".red
    end
  end

  def test_blue
    assert_nothing_raised do
      a = "".blue
    end
  end

  def test_green
    assert_nothing_raised do
      a = "".green
    end
  end

  def test_yellow
    assert_nothing_raised do
      a = "".yellow
    end
  end

  def test_purple
    assert_nothing_raised do
      a = "".purple
    end
  end

  def test_cyan
    assert_nothing_raised do
      a = "".cyan
    end
  end

  def test_white
    assert_nothing_raised do
      a = "".white
    end
  end

  def test_bold_black
    assert_nothing_raised do
      a = "".bold.black
    end
  end

  def test_bold_red
    assert_nothing_raised do
      a = "".bold.red
    end
  end

  def test_bold_blue
    assert_nothing_raised do
      a = "".bold.blue
    end
  end

  def test_bold_green
    assert_nothing_raised do
      a = "".bold.green
    end
  end

  def test_bold_yellow
    assert_nothing_raised do
      a = "".bold.yellow
    end
  end

  def test_bold_purple
    assert_nothing_raised do
      a = "".bold.purple
    end
  end

  def test_bold_cyan
    assert_nothing_raised do
      a = "".bold.cyan
    end
  end

  def test_bold_white
    assert_nothing_raised do
      a = "".bold.white
    end
  end

  def test_clean
    assert_nothing_raised do
      a = "".clean
    end
  end

  def test_bold
    assert_nothing_raised do
      a = "".bold
    end
  end

  def test_underline
    assert_nothing_raised do
      a = "".underline
    end
  end

  def test_blink
    assert_nothing_raised do
      a = "".blink
    end   
  end 

  def test_reverse
    assert_nothing_raised do
      a = "".reverse
    end   
  end 

  def test_conceal
    assert_nothing_raised do
      a = "".conceal
    end   
  end 

end
