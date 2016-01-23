require 'pry'
class DeafGrandma
  attr_accessor :g_count

  def initialize
   @g_count = 0
  end

  def says(input = nil)
    if input == "GOODBYE!"
      @g_count += 1
        if @g_count > 1
          'LATER, SKATER!'
        else
          'LEAVING SO SOON?'
        end
    else
      if input == nil
        "WHAT?!"
      elsif input.upcase == input
        "NO, NOT SINCE 1946!"
      else input.downcase == input
        "SPEAK UP, KID!"
      end
    end
  end
end
