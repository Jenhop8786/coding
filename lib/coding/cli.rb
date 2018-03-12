#Controller
class Coding::CLI #<- class

  def call
    system("clear")
    list_schools
    menu
  end#of call


  def list_schools
    puts "-----------------------------------------------------------------------"
    puts "                      2018's 10 Best Coding Bootcamps                  "
    puts "                                                                       "
    puts "             Type List to see school or exit to leave program          "
    puts "-----------------------------------------------------------------------"

    @school = Coding::School.all
    @school.each.with_index(1) do |school, i|
    puts "#{i}. #{school.name}"
  end#puts
  end#list_schools

  def menu
    puts "Enter the number of the school you would like to see more information on"
    input = nil
    while input != "exit"
    input = gets.strip

    if input.to_i > 0
    school = @school[input.to_i - 1]
    puts "#{school.name} - #{school.about}"
    elsif input == "list"
    list_schools
  elsif input == "exit"
    else
    puts "Not sure what you want, type list or exit."
  end#puts
  end#loop
  end#menu


end#class
