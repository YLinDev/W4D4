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

    describe '#get_move' do
        it "should return an array of two positions" do 
            expect(piece.get_move.is_a?(Array)).to be_truthy
        end
    end

    describe 'valid_move?' do
        context "when it is a vaild move" do 
            it "return true when it's a valid move" do
                expect(piece.valid_move?([0,1])).to be_truthy
            end
        end
        context "when it is not a valid move" do
            it "return false when move doesn't have 2 positions" do
                expect(piece.valid_move?([0,1,2])).to be_falsey
                expect(piece.valid_move?([0])).to be_falsey
            end
            it "return false when moving on top of a smaller disc" do 
                piece.move([0,1])
                expect(piece.valid_move?([0,1])).to be_falsey
            end
            it "return false when first position is empty" do
                expect(piece.valid_move?([2,0])).to be_falsey
            end
        end
    end

    describe "#move" do 
        it "moves the top block get first position to the second" do
            piece.move([0,1])
            expect(piece.board[1][-1]).to eq(1)
            expect(piece.board[0][-1]).to eq(2)
        end
    end

    describe "#won?" do
        let(:piece2) {Hanoi.new(2)}
        context "when the game is over" do
            it "should return true when board has all the discs in order on the final peg" do
                piece2.move([0,1])
                piece2.move([0,2])
                piece2.move([1,2])
                expect(piece2.won?).to be_truthy
            end
        end
        context "when the game is not over" do
            it "should return false when board does not have all the discs in order on the final peg" do
                piece2.move([0,1])
                expect(piece2.won?).to be_falsey
            end
        end
    end
end

#valid_move?
#get_move
#display
#move
#won?