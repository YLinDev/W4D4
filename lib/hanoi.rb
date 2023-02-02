class Hanoi
    attr_reader :size, :board

    def initialize(num)
        raise "Invalid Number" if num < 2
        @size = num
        @board = Array.new(3) {Array.new}
        while num > 0
            @board[0] << num
            num -= 1
        end
    end

    def get_move
        puts "Please enter new move format (n n)"
        move = gets.chomp.split(' ')
    end

    def move(positions)
        disc = @board[positions[0]].pop
        @board[positions[1]].push(disc)
    end
end