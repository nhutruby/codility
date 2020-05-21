# @param [Object] x
# @param [Object] y
# @param [Object] d
def solution(x, y, d)
  distance = y - x
  steps = distance / d
  rest = distance % d
  steps += 1 unless rest.zero?
  steps
end
puts solution(10,10,30)