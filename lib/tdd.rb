class Array

    def my_uniq 
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        return hash.keys
    end
    
    def two_sum
        result = []
        (0...self.length - 1).each do |i|
           (i+1...self.length).each do |j|
                result << [i,j] if self[i] + self[j] == 0
            end
        end
        result
    end

end

def my_transpose(array)
    result = []
    (0...array.length).each do |row|
        sub = []
        (0...array.length).each do |col|
            sub << array[col][row]
        end
        result << sub
    end
    result
end