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
        move = gets.chomp.split(' ').map(&:to_i)
    end

    def move(positions)
        disc = @board[positions[0]].pop
        @board[positions[1]].push(disc)
    end

    def valid_move?(position)
        return false if position.length != 2
        return false if @board[position[0]].empty?
        return true if @board[position[1]].empty?
        if @board[position[1]][-1] < @board[position[0]][-1]
            return false 
        end
        true 
    end

    def won?
        in_order = []
        num = @size
        while num > 0
            in_order << num
            num -= 1
        end
        @board[2] == in_order
    end

    def display
        print @board
        # @board.each do |row|
        #     print row.join(' ') 
        # end
    end

    def play 
        while !won?
            self.display
            begin 
                position = get_move
                raise "not a valid position" if !valid_move?(position)
            rescue
                puts "Not a valid position, try again."
                retry
            end
            move(position)
        end
        puts "You've won!!!"
    end
end

game = Hanoi.new(3)
game.play