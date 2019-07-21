class Node
  attr_accessor :left, :right, :value

  def initialize(value=nil)
    @value = value
    left = nil;
    right = nil;
  end
end
