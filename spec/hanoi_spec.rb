require "rspec"
require "hanoi"

describe Hanoi do
    subject(:piece) {Hanoi.new(4)}

    describe '#initialize' do
        context "the arguments passed are correct" do
            it "take in an argument greater than two" do
                expect(piece.size).to be(4)
            end

            it "should set up the pegs based on the size" do
                expect(piece.board).to be_truthy
                expect(piece.board.length).to be(3)
                expect(piece.board[0]).to eq([4,3,2,1])
            end
        end

        context "the arguments passed are incorrect" do
            it "raises an error when argument provided is less than 2" do
                expect{ Hanoi.new(0) }.to raise_error("Invalid Number")
            end
        end
    end
end