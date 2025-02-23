def calculator
  puts "Welcome to the Calculator!"
  
  loop do
    # Getting the user input
    print "Enter first number: "
    num1 = gets.chomp.to_f

    print "Enter operator (+, -, *, /): "
    operator = gets.chomp

    print "Enter second number: "
    num2 = gets.chomp.to_f

    # Performing the operation
    result = case operator
             when "+"
               num1 + num2
             when "-"
               num1 - num2
             when "*"
               num1 * num2
             when "/"
               num2 == 0 ? "Error! Division by zero." : num1 / num2
             else
               "Invalid operator!"
             end

    puts "Result: #{result}"

    # Asks if the user wants another calculation
    print "Do you want to calculate again? (yes/no): "
    answer = gets.chomp.downcase
    break unless answer == "yes"
  end

  puts "Thank you for using the calculator!"
end

# Runs the calculator
calculator
