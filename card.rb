class Card
    attr_accessor :rank, :suit
  
    def initialize(rank, suit)
      self.rank = rank
      self.suit = suit
    end
  
    def output_card
      puts "#{self.rank} of #{self.suit}"
    end
  
    #def self.random_card
    #  Card.new(rand(10), :spades)
    #end
  end

  Class Deck

    def initialize
        @ranks = [(2..10), 'J', 'Q', 'K', 'A']
        @suits = ['hearts', 'spades', 'diamonds', 'clubs']
        @cards = []

        @ranks.each do |rank|
            @suites.each do |suit|
                @cards << Card.new(rank,suit)
            end
        #build every single card in an array. how do I pick from each array
        #store as an instance variable.  how?

    end

    def shuffle
        @cards.shuffle!
        #trigger the shuffle method in an instance variable
        #keep track of cards in the deck

    end
    def deal (number)
        number.times {@cards.shift.output_card}
        #takes the top card and pulls it off deck

    end

    def output_card
        @cards.each do |card|
            card.output_card
end
deck = Deck.new
deck.shuffle
deck.deal(1)