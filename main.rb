require_relative "config/environment.rb"

require "active_record"
require "pry"
require "yaml"


require_relative "lib/library.rb"
require_relative "lib/staff_member.rb"
require_relative "lib/book.rb"
require_relative "lib/customer.rb"

binding.pry


def welcome_message
	puts "Welcome To The Library Network of Nebraska"
	main_menu
	puts "\nThanks supporting your local libraries"
end

def main_menu
	puts "\n\nSelect 1, Library Network Admin Portal"
	# puts "Select 2, Access Library Network Book Rental Portal"
	# puts "Select 3, Exit LNN"
	choice = gets.chomp.to_i

	while choice != 1 && choice != 2 && choice != 3
		puts "Please use a valid number, 1, 2, or 3"
		choice = gets.chomp.to_i
	end
		if choice == 1
			library_main_menu
		end
end

def library_main_menu
	puts "Welcome to the Library Network Admin Portal"
	puts "\nSelect 1, Display all Books"
	# puts "Select 2, Display Staff Members"
	choice = gets.chomp.to_i

	while choice != 1 && choice != 2 && choice != 3
		puts "Please use a valid number, 1, 2, or 3"
		choice = gets.chomp.to_i
	end
	if choice == 1
		library_book_menu
	end
end

def library_book_menu
	puts "Library Book Portal"
	puts "Select 1, Display all books"
	puts "Select 2, Display available books"
	# puts "Select 3, Edit current books"
	# puts "Select 4, Add new books"
	# puts "Select 5, Return to the library main menu"
	# puts "Select 6, To Exit Program"
	choice = gets.chomp.to_i

	while choice != 1 && choice != 2 && choice != 3 && choice !=4 && choice !=5 && choice !=6
		puts "Please use a valid number, 1, 2, 3, 4, 5, 6"
		choice = gets.chomp.to_i
	end

	# if choice == 1
	# 	Book.all.each do |i|
	# 		puts "Title: #{i.title}\n\tAuthor: #{i.author}\n\tISBN: #{i.isbn}"
	# 	end
	if choice == 2
		Book.where(library_id: nil) do |i|
			puts i.title
		end
			

	end
end



out = Book.where(library_id: nil) do |i|
puts out.title
end 

welcome_message



