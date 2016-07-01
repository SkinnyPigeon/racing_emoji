require_realtive('emoji')
require_realtive('track')
require_realtive('race')

@dave = Emoji.new( "😏" )
@track = Track.new
@race = Race.new( @track, @dave)

@race.spawn

while @dave.has_won? == false

  system("clear")
  print @track.track

end