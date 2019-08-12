def solution(a)
  changes = Hash.new { |h, k| h[k] = { start: 0, end: 0 } }

  a.each_with_index do |radius, position|
    p position
    p radius
    p '...'
    changes[position - radius][:start] += 1
    changes[position + radius][:end] += 1
  end
  p changes

  sorted_changes = Hash[changes.sort]
  p sorted_changes
  p sorted_changes.size
  intersections = 0
  active = 0

  sorted_changes.each do |_, change|
    p change
    started = change[:start]
    p started
    p active
    ended = change[:end]
    p started * active + (started * (started - 1)) / 2
    intersections += started * active + (started * (started - 1)) / 2
    active += started - ended
    return -1 if intersections > 10_000_000
  end

  intersections
end
p solution([1, 5, 2, 1, 4, 0] )