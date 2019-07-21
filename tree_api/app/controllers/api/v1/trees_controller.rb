class Api::V1::TreesController < ApplicationController

  require "binary_tree"

  def create

    @tree = []

    root = Node.new(tree_params.shift)
    tree_params.each{|e| BinaryTree.push_node(root, e) }
    @tree << root

    render status: 200, json: @tree

  end

  def show

    @tree = []
    root = Node.new(lca_params[:tree].first)
    lca_params[:tree].each{|e| @tree << BinaryTree.push_node(root, e) }

    n1 = BinaryTree.search_node(lca_params[:node1], root)
    n2 = BinaryTree.search_node(lca_params[:node2], root)

    @ancestor = BinaryTree.get_lca(root, n1, n2)

    render status: 200, json: @ancestor

  end

  private
  def tree_params
      params.require(:tree)
  end

  private
  def lca_params
    [:tree, :node1, :node2].each_with_object(params) do |key, obj|
       obj.require(key)
     end
  end

end
