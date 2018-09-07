# Define a method that accepts a percentage as an argument and returns a letter grade (A+, A, A-, B+, etc) for that percentage.
# Prompt your user to enter a percentage and display a message showing them the equivalent letter grade.

def pc_to_grades
puts "Please, enter an integer from 60 to 100..."
user_pc = gets.chomp.to_i

  if user_pc >= 90
    pc_diff = user_pc - 90
    s_grade_final = grade_selector("A", pc_diff)
  elsif user_pc >= 80
    pc_diff = user_pc - 80
    s_grade_final = grade_selector("B", pc_diff)
  elsif user_pc >= 70
    pc_diff = user_pc - 70
    s_grade_final = grade_selector("C", pc_diff)
  else
    pc_diff = user_pc - 60
    s_grade_final = grade_selector("D", pc_diff)
  end

puts "Your input percentage of #{user_pc} corresponds to #{s_grade_final} in letter grade notation."

end

# opted for 2 methods because wanted to avoid cumbersome nested if solutions
def grade_selector(grade, pc_diff)
  s_grade = ""
  if pc_diff >= 7
    s_grade = "#{grade}"+"+"
  elsif pc_diff <=2
    s_grade = "#{grade}"+"-"
  else
    s_grade = "#{grade}"
  end
  return s_grade
end

pc_to_grades
