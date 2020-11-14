# Build the 'line' method that shows everyone their current place in the line. If there is nobody in line, it should say "The line is currently empty.".

# Build a method that a new customer will use when entering the deli. The take_a_number method should accept two arguments, the array for the current line of people (katz_deli), and a string containing the name of the person joining the end of the line. The method should call out (puts) the person's name along with their position in line. Top-Tip: Remember that people like to count from 1, not from 0 ("zero") like computers.

# Build the 'now_serving' method which should call out (i.e. puts) the next person in line and then remove them from the front. If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".

def line(line_of_people)
    if line_of_people.empty?
        puts "The line is currently empty."
    else
        list_of_patrons = line_of_people.collect.with_index(1) do |element, index|
            "#{index}. #{element}"
        end.join(" ")        
        puts "The line is currently: #{list_of_patrons}"
    end
end

def take_a_number(katz_deli, new_customer)
    katz_deli.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.shift}."
    end
end