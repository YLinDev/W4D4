require 'rspec'
require 'deck'

describe Deck do
    describe "#initialize" do
    subject(:deck) {Deck.new}
        it "should create an array with 52 cards" do 
            expect(deck.size).to eq(52)
        end
        it "should have all unique cards" do 
            expect(deck.cards.uniq).to eq(deck.cards)
        end
    end
end