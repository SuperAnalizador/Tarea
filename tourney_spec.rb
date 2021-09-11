require_relative 'tourney'
require_relative 'competitor'
require_relative 'team'
RSpec.describe Tourney do
    context 'initialize team class' do
        it 'new#teams' do
            @teams = Tourney.new
            expect(@teams).to be_an_instance_of(Tourney)
        end
        it 'new#competitors' do
            @competitors = Tourney.new
            expect(@competitors).to be_an_instance_of(Tourney)
        end
        it '#dnisearch' do
            @competitors = Competitor.new 'P001', 'Juan Diaz', 22, '12345678', 'black', 5, 0, 0
            expect(@competitors.dni).to eq('12345678')
        end
        it '#getcode' do
            @team = Team.new 'T001', 'Dojo 1'
            expect(@team.code).to eq('T001')
        end
        it '#loginteam' do
            @team = Team.new 'T002', 'Dojo 2'
            expect(@team.code).to eq('T002')
        end
        it '#logincompetitor' do
            @competitor = Competitor.new 'P001', 'Juan Diaz', 22, '12345678', 'black', 5, 0, 0
            expect(@competitor.beltcolor).to eq('black')
        end

    end
end

