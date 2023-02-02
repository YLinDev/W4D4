require "rspec"
require "card"

describe Card do
    let(:deck) {double("deck")}
    subject(:card) { Card.new(:QH, deck)}

    describe "#initialize" do
        it "should be in a deck" do
            expect(card.deck).to be(deck)
        end
        it "should have a symbol" do
            expect(card.symbol).to eq(:QH)
        end
    end
end