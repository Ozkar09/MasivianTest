class BinaryTree < ApplicationRecord

  def self.push_node(node, value)
    if(value > node.value)
      if(node.right)
        push_node(node.right, value)
      else
        node.right = Node.new(value)
      end
    else
      if(node.left)
        push_node(node.left, value)
      else
        node.left = Node.new(value)
      end
    end
  end

  def self.get_lca(root, n1, n2)
    return nil if root == nil
    return root if root == n1 || root == n2
    left_lca = get_lca(root.left, n1, n2)
    right_lca = get_lca(root.right, n1, n2)
    return root if (left_lca != nil and right_lca != nil)
    if left_lca != nil then return left_lca else return right_lca end
  end

  def self.search_node (value, node)
    return nil if node.nil?

    if value == node.value
      return node
    elsif value > node.value
      search_node(value, node.right)
    else
      search_node(value, node.left)
    end
  end
end
