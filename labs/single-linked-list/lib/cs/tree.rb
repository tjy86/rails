class Tree
  attr_accessor :head, :array

  def initialize
    @head = nil
  end

  def insert(word)
    if @head.nil?
      @head = Node.new(word)
    else
      compare(word,@head)
    end
  end


  def compare(word, node)
    if word > node.data
      if node.nxt.nil?
        node.nxt = Node.new(word)
      else
        compare(word,node.nxt)
      end
    elsif word < node.data
      if node.prv.nil?
        node.prv = Node.new(word)
      else
        compare(word,node.prv)
      end
    end
  end

  def sort
    real_sort(@head)
  end

  def real_sort(node)
    real_sort(node.prv) if node.prv
    puts node.data
    real_sort(node.nxt) if node.nxt
  end

end