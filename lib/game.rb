class Game
  attr_reader :chosen_word, :guesses, :gallows, :head, :body, :rarm, :larm, :rleg, :leg

  def initialize()
    @possible_words = ['cracking', 'codes', 'ciphers']
    @chosen_word = @possible_words.sample
    @guesses = []
    @gallows = true 
    @head = false 
    @body = false 
    @rarm = false 
    @larm = false 
    @rleg = false 
    @lleg = false 
  end

  def get_blanks
    mystery_word = ""
    @chosen_word.each_char {|c|mystery_word.concat("_ ")}
    mystery_word
  end

  def guess(letter)
    letter = letter.downcase
    if @guesses.include?(letter)
      return "You've already guessed that letter"
    elsif @chosen_word.include?(letter)
      return fill_in(letter) 
    else
      @guesses.push(letter)
      counter = @guesses.length
      if counter == 1
        @head = true
        @gallows = false
      elsif counter == 2
        @body = true
        @head = false
      elsif counter == 3
        @rarm = true
        @body = false
      elsif counter == 4
        @larm = true
        @rarm = false
      elsif counter == 5
        @rleg = true
        @larm = false
      else
        @lleg = true
        @rleg = false
      end
    end
  end

  def fill_in(letter)
    return "Fill-in method has been invoked"
  end


# Display word

# Win Method

# Lose Method

# Play Method
  # Check for wins and loss scenarios
  # Run guess method
end