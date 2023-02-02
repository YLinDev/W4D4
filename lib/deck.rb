require 'card'

class Deck
    SUITS = ["H", "D", "S", "C"]
    FACES = ['A','2','3','4','5','6','7','8','9','10','J',"Q","K"]
    attr_reader :cards, :size

    def initialize
        @cards = []
        SUITS.each do |suit|
            FACES.each do |face|
                @cards << Card.new((face + suit).to_sym, self)
            end
        end
        @size = @cards.length
    end
end