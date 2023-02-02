class Card
    attr_reader :symbol, :deck

    def initialize(symbol, deck)
        @symbol = symbol
        @deck = deck
    end
end