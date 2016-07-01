require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
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

  # def test_emoji_can_move
  #   @dave.move
  #   assert_equal( 1, @dave.position)
  # end


end