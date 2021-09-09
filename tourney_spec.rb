require_relative 'tourney'
require_relative 'competitor'
require_relative 'team'
RSpec.describe Tourney do
    it 'initialize tourney class' do
    tourney = Tourney.new
    expect(tourney).to be_an_instance_of(Tourney)
    end
end
