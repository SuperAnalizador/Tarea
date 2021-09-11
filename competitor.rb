class Competitor
    attr_reader :code, :name, :age, :dni, :beltcolor, :score
    def initialize (code, name, age, dni, beltcolor, wongame, tiedgame, lostgame)
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
end
