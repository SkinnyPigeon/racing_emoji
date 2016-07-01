require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../race')
require_relative('../emoji')
require_relative('../track')

class TestRace < MiniTest::Test

  def setup
    @dave = Emoji.new( "😏" )
    @track = Track.new
    @race = Race.new( @track, @dave)
  end

  def test_track_has_emoji
    assert_equal( "😏", @race.spawn)
  end

  def test_race_runs
    @race.go
    assert_equal( "😏", @track.track[1])
  end


end