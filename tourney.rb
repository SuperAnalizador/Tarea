require_relative 'competitor'
require_relative 'team'
class Tourney
    def initialize()
        @teams = Array.new
        @competitors = Array.new
    end
    
    def getcode(code)
        for team in @teams
            if team.code == code
                return team
            end
        end
    end
    
    def loginteam(code, name)
        team = getcode(code)
        team = Team.new(code, name)
        @teams.push(team)
    end

    def logincompetitor(code, name, age, dni, beltcolor, wongame, tiedgame, lostgame, codeteam)
        team = getcode(codeteam)
        competitor = Competitor.new(code, name, age, dni, beltcolor, wongame, tiedgame, lostgame)
        team.competitors.push(competitor)
        @competitors.push(competitor)
    end

    def dnisearch(dni)
        for competitor in @competitors
            if competitor.dni == dni
                puts "Participante de Código: #{competitor.code} DNI: #{competitor.dni} Nombre: #{competitor.name} Edad: #{competitor.age} años. Puntaje: #{competitor.score}"
                return competitor
            else
                puts "Participante no encontrado"
            end
        end
    end


end
tourney = Tourney.new
tourney.loginteam 'T001', 'Dojo 1'
tourney.loginteam 'T002', 'Dojo 2'
tourney.loginteam 'T003', 'Dojo 3'
tourney.loginteam 'T004', 'Dojo 4'
tourney.loginteam 'T005', 'Dojo 5'
tourney.loginteam 'T006', 'Dojo 6'
tourney.logincompetitor 'P001', 'Juan Diaz', 22, '12345678', 'black', 5, 0, 0, 'T006'
tourney.logincompetitor 'P002', 'Jose Rojas', 21, '23456781', 'green', 2, 1, 2, 'T005'
tourney.logincompetitor 'P003', 'Carlos Perez', 20, '34567812', 'red', 3, 2, 0, 'T004'
tourney.logincompetitor 'P004', 'Jose Rojas', 21, '45678123', 'blue', 2, 1, 2, 'T003'
tourney.logincompetitor 'P005', 'Juan Diaz', 22, '56781234', 'yellow', 4, 1, 0, 'T002'
tourney.logincompetitor 'P006', 'Jose Rojas', 21, '67812345', 'white', 1, 2, 2, 'T001'

#a)Buscar DNI imprimir datos y puntaje final

competitor1 = tourney.dnisearch('12345678')
