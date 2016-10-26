@operators = ['+', '-', '*', '/']


def menu
  puts "Welcome to Ruby Calculator"
  puts ""
  first_number
end

def first_number
  puts "Please enter the first number"
  @f_num = gets.to_i
  puts ""
  operator
end

def operator
  puts "Enter operator for calculation or C to clear"
  @op = gets.strip
  check_op
  second_number
end

def second_number
  puts "Please enter the second number"
  @s_num = gets.to_i
  puts ""
  calculate
end

def check_op
  if @operators.include?(@op) # checks array for valid operator

  else
    puts 'invalid operator'
    menu
  end
end

def calculate
  case @op
  when '+'
    total = @f_num + @s_num
  when '-'
    total = @f_num - @s_num
  when '*'
    total = @f_num * @s_num
  when '/'
    total = @f_num / @s_num
  end
  puts total
  @f_num = total
  operator

end

menu


# add = f_num + sec_num
# subtract = f_num - sec_num
# multiply = f_num * sec_num
# divide = f_num / sec_num
# power = f_num ** sec_num
#
# puts "#{f_num} + #{s_num} = #{add}"
# puts "#{f_num} - #{s_num} = #{subtract}"
# puts "#{f_num} * #{s_num} = #{multiply}"
# puts "#{f_num} / #{f_num} = #{divide}"
# puts "#{f_num} ** #{s_num} = #{power}"
