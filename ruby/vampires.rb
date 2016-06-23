puts "Good afternoon. How many applicants will be processed today?"
  applicant_no = gets.chomp.to_i

i = 0
while i < applicant_no

    puts "What is your name?"
      name = gets.chomp

    puts "Can you tell me your age?"
      alleged_age = gets.chomp.to_i

    puts "And what year were you born in?"
      birth_year = gets.chomp.to_i

      current_year = 2016
      if birth_year == current_year - alleged_age
        age_checks_out = true
      else
        age_checks_out = false
      end

    puts "You like garlic bread, right? (yes/no)"
      garlic_ok = gets.chomp

    puts "Would you be enrolling in the health plan?(yes/no)"
      if gets.chomp == "yes"
        insurance = true
      else
        insurance = false
      end

    allergy = ''
    until allergy == ("sunshine" || "done")
      puts "And, do you have any allergies? If no allergies to enter, type 'done'"
      allergy = gets.chomp
      if
        allergy == "sunshine"
        result = "Probably a vampire!"
        puts result
      elsif
        allergy == "done"
        break
      end
    end

    if (age_checks_out && garlic_ok) || insurance
      result = "Probably not a vampire"
    elsif !(age_checks_out && garlic_ok) || !insurance
      result = "Run! It's a vampire!"
    elsif  !age_checks_out && !garlic_ok && !insurance
      result = "Almost certainly a vampire"
    elsif name == "Lestat" || "Edward Cullen" || "Drake Cula" || "Dracula" || "Tu Fang" || "Alucard"
      result = "Definitely a vampire"
    else
      result = "Hmmm.."
    end

    puts "Applicant no.#{i}, #{name} came through with a result of: #{result}"

  i += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
