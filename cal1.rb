def calculator
  puts "Type 1 to add, 2 to subtract, 3 to multiply or 4 to divide - "
  operation_selection = gets.to_i
  if operation_selection == 1
    "add"
  elsif operation_selection == 2
    "subtract"
  elsif operation_selection == 3
    "multiply"
  elsif operation_selection == 4
    "divide"
  else 
    "error"
  end
end
def calculate_answer(operator,a,b)
  if operator == "add"
    a+b
  elsif operator == "subtract"
    a-b
  elsif operator == "multiply"
    a*b
  else operator == "divide"
    a/b
  end
end
run_calculator = 1

while run_calculator == 1
new_calculation = calculator()
if new_calculation == "error"
  puts "I do not understand this type of calculation.."
else 
  puts "Enter the first number to #{new_calculation}: "
  first_number = gets.to_f
  puts "Enter the second number to #{new_calculation}: "
  second_number = gets.to_f
  answer = calculate_answer(new_calculation, first_number, second_number)
  puts "The answer is #{answer}"
  puts "Type 1 to run another calcution or any key to end: "
  run_calculator = gets.to_i

end
end

