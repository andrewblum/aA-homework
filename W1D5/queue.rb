class Queue
  def initialize
    @q = []
  end

  def enqueue(el)
    @q.push(el)
  end

  def dequeue
    @q.shift
  end

  def show
    p @q
  end
end
