class Emoji

  attr_accessor( :icon, :position )

  def initialize( icon )
    @icon = icon
    @position = 0
  end

  def move
    spaces = rand(1..2)
    @position += spaces
    sleep(0.2)
  end

  def has_won?
    return true if @position >= 21
  else
    return false
  end

end