require_relative('emoji')
require_relative('track')
require_relative('race')

@dave = Emoji.new( "😏" )
@track = Track.new
@race = Race.new( @track, @dave)

@race.spawn

while @dave.has_won? == false

  system("clear")
  print @track.track.compact.join( " " )
  puts
  @race.go

end