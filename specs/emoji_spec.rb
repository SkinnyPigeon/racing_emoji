require('minitest/autorun')
require('minitest/rg')
require_relative('../emoji')

class TestEmoji < MiniTest::Test

  def setup
    @dave = Emoji.new( "😏" )
  end

  def test_name
    assert_equal( "😏", @dave.icon )
  end

  def test_position
    assert_equal( 0, @dave.position )
  end


end