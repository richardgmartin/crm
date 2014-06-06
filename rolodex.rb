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

end
