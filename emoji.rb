class Emoji

  attr_accessor( :icon, :position, :name )

  def initialize( icon, name )
    @icon = icon
    @position = 0
    @name = name
  end

  def move
    spaces = rand(1..3)
    @position += spaces
    sleep(0.1)
  end

  def has_won?
    return true if @position >= 42
  else
    return false
  end

end