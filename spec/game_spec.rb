require('rspec')
require('game')

describe('#Game') do  
  describe('#guesses') do   # line 2 game.rb: attr method, not explicit method
    it('gives an array of guesses') do
      game = Game.new()
      expect(game.guesses).to(eq([]))
    end
  end

  describe('#chosen_word') do
    it('returns selected word') do
      game = Game.new()
      expect(game.chosen_word).to(eq('cracking' || 'codes' || 'building' || 'breaking' || 'python' || 'ciphers'))
    end
  end

end