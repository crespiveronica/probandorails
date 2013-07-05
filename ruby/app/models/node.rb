class Node < AbstractNode

  include Enumerable

  attr_accessor :left, :right

  def set_left(node)
    @left = node
  end

  def set_right(node)
    @right = node
  end

  def to_s
    string = "["
    self.each do |value|
      string += "#{value},"
    end
    string.chop!
    string += "]"
  end  

  def each (&block)
    block.call(self.value)
    self.left.each(&block) if self.left != nil
    self.right.each(&block) if self.right != nil
  end

  def breadth_first_traverse (&block)
    queue = []
    queue << self
    breadth_first_traverse_intern(queue,&block)
  end

  private
    def breadth_first_traverse_intern(queue,&block)
      block.call(queue[0].value)
      removed_node = queue.delete_at 0
      queue << removed_node.left if removed_node.left != nil
      queue << removed_node.right if removed_node.right != nil
      breadth_first_traverse_intern(queue,&block) unless queue.empty?
    end

end





# root = Node.new
# root.set_value(1)

# n2 = Node.new
# n2.set_value(2)

# n3 = Node.new
# n3.set_value(3)

# n4 = Node.new
# n4.set_value(4)

# n5 = Node.new
# n5.set_value(5)

# n6 = Node.new
# n6.set_value(6)

# root.set_left(n2)
# root.set_right(n4)
# n2.set_left(n3)
# n2.set_right(n5)
# n3.set_right(n6)

# root.breadth_first_traverse { |e| puts e }






  # def select
  #   array = []
  #   self.each do |value|
  #     array << value if yield(value)
  #   end
  #   array
  # end