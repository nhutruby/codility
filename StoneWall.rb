def solution(s)
    n = s.length
    stones = 0
    stack = [0] * n
    stack_num = 0
    for i in 0...n
      while stack_num > 0 and stack[stack_num - 1] > s[i] do
        stack_num -= 1
        p stack_num
        p '.....'
      end
      if stack_num > 0 and stack[stack_num - 1] == s[i]
        p 'nnnnnnnnnnnnext'
        next
      else
        stones += 1
        p stones
        stack[stack_num] = s[i]
        p stack_num
        p stack
        p 'elsessssssssssss'
        stack_num += 1
      end
    end
    p stack
    return stones
end
p solution([8, 8, 5, 7, 9, 8, 7, 4, 8] )