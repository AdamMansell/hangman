require('rspec')
require('game')

describe('#Game') do
  describe('#guesses') do
    it('gives an array of guesses') do
      game = Game.new()
      expect(game.guesses).to(eq([]))
    end
  end

  # describe('#chosen_word') do
  #   it('returns selected word') do
      
  #   end
  # end

end