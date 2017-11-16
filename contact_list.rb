keep_looping = true
contacts = ["Emma", "Jeremy", "Derek"]
while keep_looping
  puts "Welcome to your contact list!"
  puts "1. Add contact"
  puts "2. View contacts"
  puts "3. Edit contacts"
  puts "4. Exit"
  user_response = gets.chomp
    case user_response
    when "1"
      puts "What is the name of your contact?"
      contact_name = gets.chomp
      contacts << contact_name
    when "2"
      puts "Here are your contacts:"
      contacts.each_with_index do |person, i|
        puts " -#{person}"
      end
    when "3"
      puts "Which contact would you like to edit?"
      contacts.each_with_index do |person, i|
      puts "#{i + 1} - #{person}"
    end
     puts "Which name would you like to edit?"
     user_choice = gets.to_i - 1
     puts "What do you want to change the contact to?"
     contacts[user_choice] = gets.chomp
    when "4"
     exit
    end

end
end_of_input
