require_relative 'competitor'
class Team
    attr_accessor :code, :name, :competitors
    def initialize (code, name)
        @code = code
        @name = name
        @competitors = Array.new
    end
end
 