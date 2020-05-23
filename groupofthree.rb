# frozen_string_literal: true

def solution(s)
  n = s.gsub(/[^0-9]/, '')
  l = n.size
  return n if l <= 3

  a = n.scan(/.{1,3}/)
  la = a.size
  if l % 3 == 1
    c = a[la-2].slice!(2)
    a[la - 1] = c + a[la - 1]
  end
  a.join('-')
end

p solution('98456')