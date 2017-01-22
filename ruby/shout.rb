# RELEASE 1

=begin

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " >:("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D <3"
  end
end

p Shout.yell_angrily("Hey")

p Shout.yell_happily("Hey")

=end


# RELEASE 3


module Shout
  def yell_angrily(words)
    words + "!!!" + " >:("
  end

  def yell_happily(words)
    words + "!!!" + " :D <3"
  end
end

class Scrooge
	include Shout
end

class Bff
	include Shout
end

# DRIVER CODE

angry = Scrooge.new
p angry.yell_angrily("Bah, Humbug")

happy = Bff.new
p happy.yell_happily("OMG BFFs 4everrrr")




