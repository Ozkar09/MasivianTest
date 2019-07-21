require 'test_helper'

class NodeTest < ActiveSupport::TestCase

  test "Is Node Instance" do
    node = Node.new
    assert_instance_of(Node, node, msg=nil)
  end
  
end
