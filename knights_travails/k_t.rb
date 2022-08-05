require_relative "poly_tree_node"

class KnightPathFinder
    
    def self.valid_moves(pos)
        pos_moves = []
        possible_move_inc = [
            [1, 2], 
            [2, 1], 
            [1, -2], 
            [-1, -2],
            [-1, 2], 
            [2, -1], 
            [-2,-1], 
            [-2,1] 
        ]

        possible_move_inc.each do |inc|
            x_inc, y_inc = inc
            x, y = pos
            new_x = x + x_inc
            new_y = y + y_inc
            new_pos = [new_x, new_y]
            pos_moves << new_pos if new_pos.all? { |pos| pos >= 0 && pos < 8 }            
        end
        pos_moves
    end

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        self.build_move_tree(start_pos)
        @move_tree =  [start_pos]
        @considered_positions = [start_pos]
    end

    def build_move_tree(pos)
        @move_tree << pos
    end

    def find_path(end_pos)


    end

    def new_move_positions(pos) # this should be legit
        valid_moves = KnightPathFinder.valid_moves(pos)
        new_moves = valid_moves.reject { |move| @considered_positions.include?(move) }
        @considered_positions += new_moves
        new_moves
    end

    


end