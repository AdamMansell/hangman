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
    @word_with_blanks = []
  end

  def save
    @@games["1"] = Game.new
  end

  def self.find
    @@games["1"]
  end

  def get_blanks
    @chosen_word.each_char {|c| @word_with_blanks.push("_  ")}
    @word_with_blanks.join("")
  end

  def guess(letter)
    if @guesses.include?(letter)
      return
    elsif @chosen_word.include?(letter)
      return
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
    @chosen_word.split("").each_with_index do |char, index|
      if char == letter
        @word_with_blanks[index] = "#{char}  "
      end
    end
    @word_with_blanks.join("")
  end
end