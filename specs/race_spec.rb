require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../race')
require_relative('../emoji')
require_relative('../track')

class TestRace < MiniTest::Test

  def setup
    @dave = Emjoi.new( "😏" )
    @track = Track.new
    @race = Race.new( @track, @dave)
  end

  def test_track_has_emoji
    assert_equal( "😏", @track.spawn)
  end

end