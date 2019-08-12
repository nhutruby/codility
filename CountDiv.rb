def a(a, b, k)
  tmp = b / k - a / k
  return tmp + 1 if a % k == 0
  tmp
end
def solution(a, b, k)
  bb = (b/k) + 1
  aa = (a/k) + 1
  p bb
  p aa
  aa -= 1 if a % k == 0
  p aa
  p bb-aa
end
solution(3,6,3)