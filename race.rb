require_relative('emoji')
require_relative('track')

class Race

  def initialize( track, emoji )
    @track = track
    @emoji = emoji
  end

  def spawn
    @track.track.pop
    @track.track.insert( 0, @emoji.icon )
    return @track.track[0]
  end


end