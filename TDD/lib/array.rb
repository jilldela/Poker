class Array

  def my_uniq
    arr = []
    self.each do |el|
      arr << el unless arr.include?(el)
    end
    arr
  end

  def two_sum
    arr = []
    self.each_index do |i|
      (i + 1).upto(self.length - 1) do |j|
        arr << [i, j] if self[i] + self[j] == 0
      end
    end
    arr
  end

  def my_tranpose
    arr = Array.new(length) { Array.new(length) }
    self.each_with_index do |subs, row|
      subs.each_index do |col|
        arr[col][row] = self[row][col]
      end
    end
    arr
  end

  # def stock_picker
  #   arr = []
  #   sum = 0
  #   i = 0
  #   while i < self.length
  #     j = i + 1
  #     while j < self.length
  #       if self[j] - self[i] > sum
  #         sum = self[j] - self[i]
  #         arr = [i,j]
  #       end
  #       j += 1
  #     end
  #     i += 1
  #   end
  #   arr
  # end

  def stock_picker
    arr = []
    sum = 0
    self.each_index do |i|
      (i+1).upto(length-1) do |j|
        if self[j] - self[i] > sum
          sum = self[j] - self[i]
          arr = [i,j]
        end
      end
    end
    arr
  end

end
