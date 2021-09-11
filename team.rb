require_relative 'competitor'
class Team
    attr_reader :code, :name, :competitors
    def initialize (code, name)
        @code = code
        @name = name
        @competitors = Array.new
    end
end
 