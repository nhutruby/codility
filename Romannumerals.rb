arabic_to_roman = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 =>  'XL',
    10 => 'X',
    9 => 'IX',
}


def count_occurrences_in_roman_notation(number, needle, arabic_to_roman)
  count = 0

  arabic_to_roman.each { |arabic_digit, roman_digit|
    while number >= arabic_digit do
      p roman_digit
      p roman_digit.count(needle)
      count += roman_digit.count(needle)
      number -= arabic_digit
    end
  }
  return count
end

occurence_count = 0

(1..2660).each { |i|
  occurence_count += count_occurrences_in_roman_notation(i, 'X', arabic_to_roman)
}
p occurence_count