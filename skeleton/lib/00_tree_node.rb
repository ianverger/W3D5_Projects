class PolyTreeNode
    
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(other_node)
        self.parent.children.delete(self) unless @parent.nil?
        @parent = other_node
        @parent.children << self if @parent != nil &&
         !parent.children.include?(self)
    end



end