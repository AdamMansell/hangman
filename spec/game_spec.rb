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
      expect(game.chosen_word.match?(/cracking|codes|ciphers/)).to(eq(true))
    end
  end

  describe('#guess') do
    it('handles an incorrect guess') do
      game = Game.new()
      game.guess('Z')
      expect(game.guesses).to(eq(['z']))
      expect(game.gallows).to(eq(false))
      expect(game.head).to(eq(true))
    end
  end

  describe('#guess') do
    it('handles a letter already guessed') do
      game = Game.new()
      game.guess('Z')
      expect(game.guess('z')).to(eq("You've already guessed that letter"))
    end
  end

  describe('#guess') do
    it('handles a correct guess') do
      game = Game.new()
      game.guess('Z')
      expect(game.guess('c')).to(eq("Fill-in method has been invoked"))
    end
  end
  # Need test for get_blanks, save, self.find

end