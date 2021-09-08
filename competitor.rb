class Competitor
    attr_accessor :code, :name, :age, :dni, :beltcolor, :wongame, :tiedgame, :lostgame
    def initialize code, name, age, dni, beltcolor, wongame, tiedgame, lostgame
    @code = code
    @name = name
    @age = age
    @dni = dni
    @beltcolor = beltcolor
    @wongame = wongame
    @tiedgame = tiedgame
    @lostgame = lostgame
    end
end