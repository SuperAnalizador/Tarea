class Competitor
    attr_accessor :code, :name, :age, :dni, :beltcolor, :wongame, :tiedgame, :lostgame, :score
    def initialize code, name, age, dni, beltcolor, wongame, tiedgame, lostgame
    @code = code
    @name = name
    @age = age
    @dni = dni
    @beltcolor = beltcolor
    @wongame = wongame
    @tiedgame = tiedgame
    @lostgame = lostgame
    @score = (wongame * 4) + (tiedgame * 3)
    end

    def calcscore()
    @score = (@wongame * 4) + (@tiedgame * 3)
    end
end