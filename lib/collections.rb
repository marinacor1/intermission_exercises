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

end
