require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../track')

class TestTrack < MiniTest::Test

  def setup
    @track=Track.new
  end

  def test_track_length
    # binding.pry
    # nil
    assert_equal( 10, @track.length )
  end

end