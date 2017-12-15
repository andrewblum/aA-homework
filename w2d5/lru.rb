class LRUCache
  def initialize(size)
    @array = []
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @array.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @array.length >= @size
      if @array.include? el
        @array.delete(el)
        @array.push(el)
      else
        @array.shift
        @array.push(el)
      end
    else
      @array.push(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @array
  end

  private
  # helper methods go here!

end
