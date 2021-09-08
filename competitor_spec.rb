require_relative 'Competitor'

RSpec.describe Competitor do
    context 'initialize competitor class' do
        before(:each) do
        end
        it '#new' do
            expect(@competitor).to be_an_instance_of(Competitor)    
        end
        it 'new#code' do
            expect(@competitor.code).to eq('P001')
        end
        it 'new#name' do
            expect(@competitor.name).to eq('Juan Diaz')
        end
        it 'new#age' do
            expect(@competitor.age).to eq('22')
        end
        it 'new#dni' do
            expect(@competitor.dni).to eq('12345678')
        end
        it 'new#beltcolor' do
            expect(@competitor.beltcolor).to eq('black')
        end
        it 'new#code' do
            expect(@competitor.wongame).to eq(5)
        end
        it 'new#code' do
            expect(@competitor.tiedgame).to eq(0)
        end
        it 'new#code' do
            expect(@competitor.lostgame).to eq(0)
        end
    end
end