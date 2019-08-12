def solution(s, p, q)
  letters = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }
  n = s.size

  prefix_sums = Hash.new { |h, k| h[k] = Array.new(n + 1, 0) }

  letters.keys.each do |letter|
    for i in 1..n
      prefix_sums[letter][i] = prefix_sums[letter][i - 1]
      prefix_sums[letter][i] += 1 if s[i-1] == letter
    end
  end
  p prefix_sums
  output = []
  p p.zip(q)
  p.zip(q).each do |from, to|
    p '****'
    letters.keys.each do |letter|
      p letter
      p prefix_sums[letter][from]
      p prefix_sums[letter][to+1]
      p '....'
      if prefix_sums[letter][from] != prefix_sums[letter][to+1]
        output << letters[letter]
        p letters[letter]
        break
      end
    end
  end

  output
end
p solution('CAGCCTA', [2, 5, 0], [4, 5, 6])