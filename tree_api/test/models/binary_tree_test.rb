require 'test_helper'

class BinaryTreeTest < ActiveSupport::TestCase

  test "The push_node method should return a node instance" do

    tree = [8,5,3,2,1,4,19,21,26,20]

    root = Node.new(tree.shift)
    tree.each{|e| node = BinaryTree.push_node(root, e) }

    assert_instance_of(Node, node, msg=nil)
  end

  test "The get_lca method should return the correct node" do

    tree = [8,5,3,2,1,4,19,21,26,20]
    @tree_exp = []
    val_exp = 21

    val_node1 = 20
    val_node2 = 26

    root = Node.new(tree.first)
    tree.each{|e| @tree_exp << BinaryTree.push_node(root, e) }

    n1 = BinaryTree.search_node(val_node1, root)
    n2 = BinaryTree.search_node(val_node2, root)

    @ancestor = BinaryTree.get_lca(root, n1, n2)

    assert_equal(val_exp, @ancestor.value, msg = nil)

  end

  test "The search_node method should return nil if the node doesn't exist" do

    tree = [8,5,3,2,1,4,19,21,26,20]

    val_exp = nil

    val_node1 = 90

    root = Node.new(tree.first)
    tree.each{|e| BinaryTree.push_node(root, e) }

    n1 = BinaryTree.search_node(val_node1, root)

    assert_equal(val_exp, n1, msg = nil)

  end

  test "The search_node method should return the correct node" do

    tree = [8,5,3,2,1,4,19,21,26,20]

    val_exp = 20

    val_node1 = 20

    root = Node.new(tree.first)
    tree.each{|e| BinaryTree.push_node(root, e) }

    n1 = BinaryTree.search_node(val_node1, root)

    assert_equal(val_exp, n1.value, msg = nil)

  end
end
