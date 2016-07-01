require_relative('emoji')
require_relative('track')
require_relative('race')

@dave = Emoji.new( "😏", "dave" )
@bob = Emoji.new( "😳", "bob" )
@jeff = Emoji.new( "🤔", "jeff" )
@track = Track.new
@track2 = Track.new
@track3 = Track.new
@race = Race.new( @track, @dave)
@race2 = Race.new( @track2, @bob)
@race3 = Race.new( @track3, @jeff)

@race.spawn
@race2.spawn
@race3.spawn

while @dave.has_won? == false &&
      @bob.has_won? == false &&
      @jeff.has_won? == false

  system("clear")
  print @track.track.compact.join( " " )
  puts
  print @track2.track.compact.join( " " )
  puts
  print @track3.track.compact.join( " " )
  puts
  @race.go
  @race2.go
  @race3.go

end