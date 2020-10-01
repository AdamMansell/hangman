class Game
  attr_reader :chosen_word, :guesses

  def initialize()
    @possible_words = ['cracking', 'codes', 'building', 'breaking', 'python', 'ciphers']
    @chosen_word = @possible_words.sample
    @guesses = []
  end

  # methods
  # draw gallows
  # draw head
  # draw head, body
  # draw rarm
  # draw larm
  # draw rleg
  # draw lleg

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