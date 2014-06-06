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

	def modify_existing_contact
		# prompt to enter a contact id to be found
		result_contact = search_on_id
		puts "The original contact is: #{result_contact.first_name}, #{result_contact.last_name}, #{result_contact.email}, #{result_contact.note}"

		# modify contact information

		puts "What is the new first name?"
		new_first_name = gets.chomp
		result_contact.first_name = new_first_name

		puts "What is the new last_name name?"
		new_last_name = gets.chomp
		result_contact.last_name = new_last_name

		puts "What is the new email?"
		new_email = gets.chomp
		result_contact.email = new_email

		puts "The updated contact is: #{result_contact.first_name}, #{result_contact.last_name}, #{result_contact.email}, #{result_contact.note}"

	end

	def delete_contact
		# prompt to enter a contact id to be found
		result_contact = search_on_id
		puts "The original contact is: #{result_contact.first_name}, #{result_contact.last_name}, #{result_contact.email}, #{result_contact.note}"

		@contacts.delete(result_contact)
		display_all_contacts


	end

	def display_all_contacts
		@contacts.each do |fname|
    		puts "Contact: #{fname.first_name}, #{fname.last_name}, #{fname.email}, #{fname.note}"
    	end	
	end

	def display_attribute
		# some code
	end


end
