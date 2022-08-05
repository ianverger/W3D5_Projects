require_relative "poly_tree_node"

class KnightPathFinder
    
    def self.valid_moves(pos)
        
    end

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        self.build_move_tree(start_pos)
        @move_tree =  [start_pos]
        @considered_positions = []
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