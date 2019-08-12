def board_size(a, k)
  min_size = 1
  max_size = a.size
  # binary search: O(log n)
  while min_size <= max_size
    mid_size = (min_size + max_size) / 2
    boards = num_of_boards(a, mid_size) # O(n)
    return mid_size if boards == k
    #puts "mid_size: #{mid_size}, boards: #{boards}"
    if boards < k
      max_size = mid_size - 1 # shrinking board size increases # of boards
    else
      min_size = mid_size + 1 # raising board size decreases # of boards
    end
  end
  -1
end
def num_of_boards(a, size)
  boards = 0
  end_of_board = -1
  p '........'
  p size
  a.size.times do |i|
    if a[i] == 1 && end_of_board < i
      p i
      boards += 1
      end_of_board = i + size - 1
      p 'bbb'
      p end_of_board
      p 'aaaa'
    end
  end
  p boards
  p 'ccc'
  boards
end
p board_size([0, 1, 0, 1, 1, 1, 0, 1], 1)