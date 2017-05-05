require 'byebug'
require_relative '00_tree_node.rb'

class KnightPasthFinder
attr_reader :start_pos
attr_accessor  :postion :root_node

  def initialize(postion = [])
    @start_pos = postion
    @visted_postions = [start_pos]
    build_move_tree

  end

  def new_move_postion(pos)

  end

  def build_move_tree
      self.root_node = PolyTreeNode.new(start_pos)

  end

  private

  MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]

  self.valid_moves(pos)


  end



end
