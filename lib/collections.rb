require 'pry'
class Age
  def age_order(data)
    names = data.map do |name, age|
      age
    end
  end

  def name_age(data)
    names_with_age = data.map do |name, age|
      "#{name} (#{age})"
    end
  end

  def name_age_alpha(data)
    data = data.sort.to_h
    ordered_ages = data.sort_by {|name, age| age }
    final_list = ordered_ages.map do |name, age|
        "#{name} (#{age})"
      end
     index = 0
     second_index = index + 1
     counter = 0

     while counter < final_list.length - 1
      while index < final_list.length
        if final_list[index][-4..-1] == final_list[second_index][-4..-1]
          original_first = final_list[index]
          original_second = final_list[second_index]
          final_list[index] = original_second
          final_list[second_index] = original_first
          index +=1
        else
          index +=1
        end
      end
      index = 0
      counter += 1
    end
     final_list
  end

  def names_hash(data)
    ages = data.sort.group_by {|name, age| age }
  end
end

class State
  def connect(states, capitals, input_state)
    if states.include?(input_state)
      state_short = states[input_state]
      capitals[state_short]
    else
      "Unknown"
    end
  end

  def city_connect(states, capitals, input_city)
    correct_hash = capitals.select{|state, city| city == input_city}
    state_initial = correct_hash.keys
    correct_state_hash = states.select {|city, state| state_initial[0] == state}
    correct_state_hash.keys[0]
  end
end

class Scrabble
  attr_reader :scores

  def initialize
    @scores = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def letter_score(word)
    scored_array = word.map do |letter|
      "#{letter} has the value #{@scores[letter]}"
    end
  end

  def word_score(word)
    scored_array = word.upcase.chars.map do |letter|
      "#{letter} has the value #{@scores[letter]}"
      # scored_array[0]
    end

  end

  def total_score(word)
    # pry
    scored_array = word.upcase.chars.map do |letter|
      scores[letter]
    end
    total = scored_array.inject(:+)
    "#{word} has the total score #{total}"
  end


end
