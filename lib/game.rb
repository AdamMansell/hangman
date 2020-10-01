class Game
  attr_reader :chosen_word, :guesses, :gallows, :head, :body, :rarm, :larm, :rleg, :leg

  def initialize()
    @possible_words = ['cracking', 'codes', 'ciphers']
    @chosen_word = @possible_words.sample
    @guesses = []
    @gallows = true #counter 0
    @head = false # 1
    @body = false # 2
    @rarm = false # 3
    @larm = false # 4
    @rleg = false # 5
    @lleg = false # 6
  end

  def guess(letter)
    letter = letter.downcase
    if @guesses.include?(letter)
      return "You've already guessed that letter"
    elsif @chosen_word.include?(letter)
      return fill_in(letter) # not yet made
    else
      @guesses.push(letter)
      counter = @guesses.length
      if counter == 1
        @head = true
        @gallows = false
      elsif counter == 2
        @body = true
        @head = false
      elsif counter ==3
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

  # Guess (letter)
  # Check if letter already in @guesses, and return error message
  # Check if the  letter is in the@word
    # Populate the letter in @word
  # If the letter is not in @word
    # Add the guess to the @guesses array
    # call a draw method

# Display word

# Win Method

# Lose Method

# Play Method
  # Check for wins and loss scenarios
  # Run guess method

  
end








# class Artist
#   attr_reader :id
#   attr_accessor :name, :stage_id

#   @@artists = {}
#   @@total_rows = 0

#   def initialize(name, stage_id, id)
#     @name = name
#     @stage_id = stage_id
#     @id = id || @@total_rows += 1
#   end

#   def ==(artist_to_compare)
#     (self.name() == artist_to_compare.name()) && (self.stage_id() == artist_to_compare.stage_id())
#   end

#   def self.all
#     @@artists.values
#   end

#   def save
#     @@artists[self.id] = Artist.new(self.name, self.stage_id, self.id)
#   end

#  def self.find(id)
#     @@artists[id]
#   end