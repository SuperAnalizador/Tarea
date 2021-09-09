require_relative 'tourney'
require_relative 'competitor'
require_relative 'team'
RSpec.describe Tourney do
    context 'initialize team class' do
        it 'new#tourney' do
            @teams = Tourney.new
            expect(@teams).to be_an_instance_of(Tourney)
        end
        it 'new#tourney' do
            @competitors = Tourney.new
            expect(@competitors).to be_an_instance_of(Tourney)
        end
        it '#dnisearch' do
            @competitors = Competitor.new 'P001', 'Juan Diaz', 22, '12345678', 'black', 5, 0, 0
            expect(@competitors.dni).to eq('12345678')
        end
    end
end
