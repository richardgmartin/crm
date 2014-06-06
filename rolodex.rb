# rolodex file within richard's crm application

class Rolodex

	# define getter and setter attributes

	attr_reader :contacts


	def initialize
		@contacts = []
		@contact_id = 1000
	end
	
	# define contacts as instance variable
	# def contacts
	# 	@contacts
	# end	

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		@contact_id += 1
	end	

	# puts "#{contact}"


	# def find_contact
	# 	find_contact_print_menu
	# 	find_attr = gets.to_i
	# 	attr_to_find(find_attr)
	# end

	# def attr_to_find(find_attr)
	# 	case find_attr
	# 	when 1 then search_on_first_name
	# 	when 2 then search_on_last_name
	# 	when 3 then search_on_email
	# 	else
 #      		puts "Invalid option. Please try again"
 #      		find_contact
 #      	end	
 #    end

    def search_on_id
    	puts "What is the contact's id?"
    	search_id = gets.to_i
    	result_contact = nil
    	@contacts.each do |fname|
    		if fname.id == search_id
    			result_contact = fname
    		end	
     	end
     	result_contact
    end 	

	# def find_contact_print_menu
	# 	# method called by other methods to find and identify
	# 	# the record to be modified, deleted, printed etc
	# 	puts "Specify the attribute to find the contact."
	# 	puts "[1] First Name"
	#   	puts "[2] Last Name"
	#   	puts "[3] Email"
	#   	puts "Enter a number: "
	# end	

	def modify_existing_contact
		# prompt to enter a contact id to be found
		result_contact = search_on_id
		puts "#{result_contact.first_name}, #{result_contact.last_name}, #{result_contact.email}, #{result_contact.note}"
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


end
