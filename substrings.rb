# frozen_string_literal: true

def substrings(str, dictionary)
  result = {}

  dictionary.each do |substr|
    str = str.downcase
    count = str.scan(substr).count
    result[substr] = count if count != 0
  end
  result
end

dictionary = %w[
  below down go going horn how howdy it i low
  own part partner sit
]

str = "Howdy partner, sit down! How's it going?"
puts substrings(str, dictionary)
