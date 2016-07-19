def return_10()
  return 10
end

def add(number1, number2)
  add_result = number1 + number2
  return add_result
end

def subtract(number1, number2)
  subtract_result = number1 - number2
  return subtract_result
end

def multiply(number1, number2)
  multiply_result = number1 * number2
  return multiply_result
end

def divide(number1, number2)
  divide_result = number1 / number2
  return divide_result
end

def length_of_string(test_string)
  length_of_string = test_string.length
  return length_of_string
end

def join_string(string_1, string_2)
  join_string = string_1 + string_2
  return join_string
end

def add_string_as_number(string_1, string_2)
  add_result = string_1.to_i + string_2.to_i
  return add_result
end

# def number_to_full_month_name(month_number)
#   case month_number
#   when 1
#     return "January"
#   when 3
#     return "March"
#   when 9 
#     return "September"
#   end
# end

def number_to_full_month_name(month_number)
  require "date"
  return Date::MONTHNAMES[month_number]
end

# def number_to_short_month_name(month_number)
#   case month_number
#   when 1
#     return "Jan"
#   when 3
#     return "Mar"
#   when 9
#     return "Sep"
#   end
# end

def number_to_short_month_name(month_number)
  require "date"
  return Date::ABBR_MONTHNAMES[month_number]
end


def volume_of_cube(length)
  volume = length**3
  return volume
end

#gives volume to two decimal places
def volume_of_sphere(radius)
  volume = ((Math::PI * (radius ** 3)) * 4/3).to_f
  return volume.round(2)
end

#gives celsius temp to two decimal places
def fahrenheit_to_celsius(fah)
  celsius = ((fah-32).to_f * 5/9).to_f
  return celsius.round(2)
end


#additional practice
def drummonds_chat(chat)
  drummond_says = chat.gsub('b', 'g').gsub('p', 'k')
  return drummond_says
end





















