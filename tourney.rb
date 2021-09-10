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

    def logincompetitor(code, name, age, dni, beltcolor, wongame, tiedgame, lostgame, codeteam)
        team = getcode(code)
        competitor = Competitor.new(code, name, age, dni, beltcolor, wongame, tiedgame, lostgame)
        team.competitor.push(competitor)
        @competitor.push(competitor)
    end

    def win()
        maxscore = 0
        winner = nil
        for competitor in @competitors
            if competitor.score > maxscore
                maxscore = competitor.score
                winner = competitor
            end
        end
        puts "Participante de Código: #{winner.code} DNI: #{winner.dni} Nombre: #{winner.name} Edad: #{winner.age} años. Puntaje: #{winner.score}"
    end
end



