require_relative('emoji')
require_relative('track')
require_relative('race')

@dave = Emoji.new( "😏", "dave" )
@bob = Emoji.new( "😳", "bob" )
@jeff = Emoji.new( "🤔", "jeff" )
@steve = Emoji.new( "🤓", "steve" )
@nate = Emoji.new( "😎", "nate" )
@slappy = Emoji.new( "🤕", "slappy" )
@pip = Emoji.new( "😩", "pip" )
@tobias = Emoji.new( "🤐", "tobias" )

@track = Track.new
@track2 = Track.new
@track3 = Track.new
@track4 = Track.new
@track5 = Track.new
@track6 = Track.new
@track7 = Track.new
@track8 = Track.new

@race = Race.new( @track, @dave)
@race2 = Race.new( @track2, @bob)
@race3 = Race.new( @track3, @jeff)
@race4 = Race.new( @track4, @steve)
@race5 = Race.new( @track5, @nate)
@race6 = Race.new( @track6, @slappy)
@race7 = Race.new( @track7, @pip)
@race8 = Race.new( @track8, @tobias)

@race.spawn
@race2.spawn
@race3.spawn
@race4.spawn
@race5.spawn
@race6.spawn
@race7.spawn
@race8.spawn

while @dave.has_won? == false &&
      @bob.has_won? == false &&
      @jeff.has_won? == false &&
      @steve.has_won? == false &&
      @nate.has_won? == false &&
      @slappy.has_won? == false &&
      @pip.has_won? == false &&
      @tobias.has_won? == false 


  system("clear")
  print "1" + @track.track.compact.join( " " ) + " *"
  puts
  print "2" + @track2.track.compact.join( " " ) + " F"
  puts
  print "3" + @track3.track.compact.join( " " ) + " I"
  puts
  print "4" + @track4.track.compact.join( " " ) + " N"
  puts
  print "5" + @track5.track.compact.join( " " ) + " I"
  puts
  print "6" + @track6.track.compact.join( " " ) + " S"
  puts
  print "7" + @track7.track.compact.join( " " ) + " H"
  puts
  print "8" + @track8.track.compact.join( " " ) + " *"
  puts
  @race.go
  @race2.go
  @race3.go
  @race4.go
  @race5.go
  @race6.go
  @race7.go
  @race8.go

end