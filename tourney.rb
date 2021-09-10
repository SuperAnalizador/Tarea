require_relative 'competitor'
require_relative 'team'
class Tourney
    def initialize()
        @teams = Array.new
        @competitors = Array.new
    end
end
    
    def dnisearch(dni)
        for competitor in @competitors
            if competitor.dni == dni
                return competitor
            puts "Participante de Código: #{competitor.code} DNI: #{competitor.dni} Nombre: #{competitor.name} Edad: #{competitor.age} años. Puntaje: #{competitor.score}"
            else
            puts "Participante no encontrado"
        end
    end

    def getcode(code)
        for team in @teams
            if team.code == code
                return team
            end
        end
    end
    
    def loginteam(code,name)
        team = getcode(code)
        team = Team.new(code, name)
        @teams.push(team)
    end
    
end

