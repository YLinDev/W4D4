require 'rspec'
require 'tdd'

describe Array do

    describe '#my_uniq' do 
        it "should return unqiue elements" do 
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
        it "should return a new array" do
            array1 = [1,2,1,3,3]
            array2 = array1.my_uniq
            expect(array1).to_not be(array2)
        end
    end

    describe '#two_sum' do 
        it "each set of indices should sum to 0" do
            expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
        end
    end

end

describe 'my_transpose' do
    it "should transpose the 2D grid" do
        grid1 = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ]

        grid2 = [
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]

        expect(my_transpose(grid1)).to eq(grid2)
    end
end

describe "stock_picker" do

    it "should raise an error where there are not enough inputs" do
        expect{stock_picker([1])}.to raise_error('not enough days')
    end

    it "should return the most profitable pair of days" do
        expect(stock_picker([1,4,0,2,5])).to eq([2,4])
    end
end