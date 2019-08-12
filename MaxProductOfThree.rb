def max_product_of_three(a)
  a.sort!

  # three biggest numbers
  tmp1 = a.last(3).inject(:*)

  # two smallest negative numbers and biggest positive number
  tmp2 = a[0] * a[1] * a[-1]

  [tmp1, tmp2].max
end
