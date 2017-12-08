class MyMap
  def initialize(default=nil)
    @default = default
    @map = []
  end

  def assign(key, value)
    found = false
    @map.each do |entry|
      if entry[0] == key
        entry[1], found = value, true
      end
    end
    @map << [key, value] if not found
  end

  def lookup(key)
    @map.each do |entry|
      return entry[1] if entry[0] == key
    end
    return @default
  end

  def remove(key)
    @map.each do |entry|
      @map.delete(entry) if entry[0] == key
    end
  end

  def show
    p @map
  end
end
