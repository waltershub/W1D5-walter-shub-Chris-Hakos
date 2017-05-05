require 'byebug'
class PolyTreeNode

  attr_accessor :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(node)
    old_parent = self.parent
    node.children << self unless node == nil || node.children.include?(self)
    @parent = node
    old_parent.children.delete(self) unless old_parent == nil || old_parent == node
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
      raise "not one of ours" unless children.include?(child_node)
      child_node.parent = nil
  end

  def dfs(target_value)

    return self  if value == target_value


    children.each  do |child|

      result_search  = child.dfs(target_value)
      return result_search if result_search
    end


    nil
  end

  def bfs(target_value)
    check_array = [self]

    until check_array.empty?

      if check_array[0].value != target_value
        check_array.concat(check_array[0].children)
        check_array.shift
      else
        return check_array[0]

      end

    end


  nil
  end


end
