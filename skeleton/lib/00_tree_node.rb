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

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        if self.children.include?(child_node)
            child_node.parent = nil 
        else
            raise "node is not a child"
        end
    end
end