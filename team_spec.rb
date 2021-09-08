require_relative 'team'
RSpec.describe Team do
    context 'initialize team class' do
        before(:each) do
            @team = Team.new 'T001', 'Dojo 1'
        end
        it '#new' do
            expect(@team).to be_an_instance_of(Team)
        end
        it 'new#code' do
            expect(@team.code).to eq('T001')
        end
        it 'new#name' do
            expect(@team.name).to eq('Dojo 1')
        end
    end
end