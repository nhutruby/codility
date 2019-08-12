def prefix_sums(a)
  n = a.length
  p = [0]*(n+1)
  for i in Array(1..n) do
    p[i] = p[i - 1].to_i + a[i - 1].to_i
  end
  p
end
def count_total(p, x, y)
  p p[y+1].to_i
  p p[x].to_i
  p p[y+1].to_i - p[x].to_i
  p '.................'
  p[y+1].to_i - p[x].to_i
end
def mushrooms(a, k, m)
  n = a.length
  result = 0
  pref = prefix_sums(a)
  p pref
  for p in 0..([m,k].min) do
    left_pos = k - p
    p left_pos
    right_pos = [n - 1, [k, k + m - 2 * p].max].min
    p right_pos
    p '...'
    result = [result, count_total(pref, left_pos, right_pos)].max
  end
  p result
  p '******'
  for p in 0..[m, n - k - 1].min do
    right_pos = k + p
    left_pos = [0, [k, k - (m - 2 * p)].min].max
    p left_pos
    p right_pos
    p '...'
    result = [result, count_total(pref, left_pos, right_pos)].max
  end
  result
end
p mushrooms([2,3,7,5,1,3,9], 4, 6)