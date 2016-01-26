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
