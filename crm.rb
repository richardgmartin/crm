# crm file within richard's crm application

require_relative "contact"
require_relative "rolodex"

# define the class "CRM"

class CRM

	# determine how to handle "user_selected" variable

	attr_reader :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
		puts "Welcome to my #{@name}"
	end
		
	def print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[6] Exit"
	  puts "Enter a number: "
	end

	def main_menu
	  print_main_menu
	  user_selected = gets.to_i
	  call_option(user_selected)
	end

	def call_option(user_selected)
  	  # add_new_contact if user_selected == 1
  	  # modify_existing_contact if user_selected == 2
  	  # delete_contact if user_selected == 3
     #  display_all_contacts if user_selected == 4
     #  display_attribute if user_selected == 5
     #  exit_crm if user_selected == 6

      case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then display_attribute
      when 6
      	puts "Goodbye"
      	return
      else
      	puts "Invalid option. Please try again"
      	main_menu
      end							
	end

	def add_new_contact
	  print "Enter First Name: "
  	  first_name = gets.chomp
      print "Enter Last Name: "
      last_name = gets.chomp
      print "Enter Email Address: "
      email = gets.chomp
      print "Enter a Note: "
      note = gets.chomp
      contact = Contact.new(first_name, last_name, email, note)
      @rolodex.add_contact(Contact.new(first_name, last_name, email, note))
      main_menu
	end
	
	def modify_existing_contact
		# some code
	end

	def delete_contact
		# some code
	end

	def display_all_contacts
		# some code
	end

	def display_attribute
		# some code
	end

	def exit_crm
		# some code
	end
			
end

crm = CRM.new("the rgm crm")



