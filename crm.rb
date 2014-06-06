# crm file within richard's crm application

require_relative "contact"
require_relative "rolodex"

# define the class "CRM"

class CRM

	# determine how to handle "user_selected" variable

	attr_reader :name

	def self.run(name)
		crm = self.new(name)
		crm.main_menu
	end	

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
  	  case user_selected
      when 1 then add_new_contact
      when 2 then @rolodex.modify_existing_contact
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
      # @rolodex.add_contact(contact)
      main_menu
	end
	
			
end

# issue Class method call
CRM.run("the rgm crm")


# issue instance method call
# crm = CRM.new("the rgm crm")
# crm.menu_main







