class Emoji

  attr_accessor( :icon, :position, :name )

  def initialize( icon, name )
    @icon = icon
    @position = 0
    @name = name
  end

  def move
    spaces = rand(1..2)
    @position += spaces
    sleep(0.2)
  end

  def has_won?
    return true if @position >= 41
  else
    return false
  end

end