FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish',
  'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

#basiclly bubble sort, but bubble search
def n_2nd
  longest = ""
  FISH.each do |fsh1|
    FISH.each do |fsh2|
      longest = fsh1 if fsh1.length > fsh2.length
    end
  end
  longest
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged + left + right
  end
end


#merge sort, but merge search
def n_log_n
  fishes = FISH.dup
  prc = Proc.new { |x, y| x.length <=> y.length }
  fishes.merge_sort(&prc)[0]
end


def n
  longest = ""
  FISH.each do |fsh|
    longest = fsh if fsh.length > longest.length
  end
  longest
end

TILES_ARRAY = ["up", "right-up", "right", "right-down",
  "down", "left-down", "left",  "left-up" ]

#has to search the array for the index every time
def slow_dance(move)
  TILES_ARRAY.find_index(move)
end

#just returns our index value with a single lookup
MOVE_HASH = {"up" => 0, "right-up" => 1, "right" =>2 , "right-down" => 3,
  "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7 }
def fast_dance(move, MOVE_HASH)
  hash[move]
end
