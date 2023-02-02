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
end