class TennisRacquets::CLI 

  def call
    puts "Welcome to the Head used tennis racquet market!"
    get_racquets
    list_racquets
    menu
    goodbye
  end

  def get_racquets
    @racquets = TennisRacquets::Racquet.all 
  end

  def list_racquets
    puts "Here's a list of used Head tennis racquets for sale."
    puts "Please make a select the number to see more information about that racquet."
     @racquets.each.with_index(1) do |racquet, i|
     puts "#{i}. #{racquet.name}" 
     end
   end

 def menu
  input = nil 
  until input == "exit" 
   puts "\nPlease enter the number of the listed racquet to see more information.  Type 'list' to see the main list again."
   puts "Or type 'exit' to leave the program"
  input = gets.strip
   
   if input.to_i > 0 
    the_racquet = @racquets[input.to_i-1]
     puts "#{the_racquet.name}"
     puts "#{the_racquet.price}"
     puts "#{the_racquet.description}"
     #puts "#{the_dog.size}"
     #puts "#{the_dog.color}"
     #puts "#{the_dog.bio}"
   ##case input
   ##when "1"
     ##puts "Detailed information on 1..."
   ##when "2"
     ##puts "Detailed information on 2..."
   ##when "3"
     ##puts "Detailed information on 3..."
   elsif input == "list"
    list_raquets
   else  
    puts "Please enter a valid request"
   end
 end
end
 
 def goodbye
  puts "Thanks for visiting.  See you later.  ACE!"
 end
   
 
end