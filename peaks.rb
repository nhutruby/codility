def peaks(a)
  n = a.size
  peaks = []

  for i in 1..n-2
    peaks << i if a[i - 1] < a[i] && a[i] > a[i + 1]
  end

  for blocks_count in n.downto(1)

    next if n % blocks_count != 0

    block_size = n / blocks_count
    p block_size
    p '###'
    current_block = 0

    peaks.each do |peak|

      if peak / block_size > current_block
        # current block does't have peak
        break
      end
      if peak / block_size == current_block
        p current_block
        current_block += 1
        p peak
        p block_size
        p peak / block_size
        p '...'
      end
    end

    return blocks_count if current_block == blocks_count
  end
  0
end
p peaks(  [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2] )