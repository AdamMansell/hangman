class Game
  attr_reader :chosen_word, :guesses, :gallows, :head, :body, :rarm, :larm, :rleg, :leg

  @@games = {}
  @@possible_words = ['cracking', 'codes', 'ciphers']

  def initialize()
    @chosen_word = @@possible_words.sample
    @guesses = []
    @gallows = true 
    @head = false 
    @body = false 
    @rarm = false 
    @larm = false 
    @rleg = false 
    @lleg = false 
  end

  def save
    @@games["1"] = Game.new
  end

  def self.find
    @@games["1"]
  end

  def get_blanks
    mystery_word = ""
    @chosen_word.each_char {|c|mystery_word.concat("_  ")}
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
    mystery_word = ""
    @chosen_word.each_char do |c|
      if c == letter
        mystery_word.concat("#{c}  ")
      else
        mystery_word.concat("_  ")
      end
    end
    return mystery_word
  end


# Win Method

# Lose Method

# Play Method
  # Check for wins and loss scenarios
  # Run guess method
end