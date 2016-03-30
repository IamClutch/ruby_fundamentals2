# Add any require_relative statements here
require_relative 'contact'
class CRM
  attr_accessor :name

  def self.run(name)
    # Fill this in
    crm = CRM.new(name)
    crm.main_menu
  end

  def initialize(name)
    # Fill this in
    @name = name
  end

  def main_menu
    # Fill this in
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    # Fill this in
    puts '[1] Add a new contact'
    puts '[2] Modify an exisiting contacts'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number'
  end

  def call_option(user_selected)
    # Fill this in
      case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then Delete a contact
      when 4 then Display all the contacts
      when 5 then Search by attribute
      when 6 then Exit
      end
  end

  def add_new_contact
    print 'Enter First Name'
    first_name = gets.chomp

    print 'Enter Last Name:'
    last_name = gets.chomp

    print 'Enter Email Address'
    email = gets.chomp

    print 'Enter a Note'
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact ##NEEED HELPP
    # Fill this in
    puts 'Enter the id modify the exisiting contact'
    modify_contact = gets.to_i
    contact = Contact.find(modify_contact)

    puts 'What would you to change? 1. First name 2. Last name 3. email 4. note '
    answer = gets.to_i

    puts 'Please enter the new value'
    new_answer = gets.chomp

  end

  def delete_contact
    # Fill this in

    puts 'Which contact would you to delete?'
    id_delete = gets.to_i
    contact = Contact.find(id_delete)
    contact.delete
  end

  def display_all_contacts
    # Fill this in
    # HINT: Make use of the display_contacts method
    puts display_contacts.(Contact.all)

  end

  def search_by_attribute
    # Fill this in
    # HINT: Make use of the display_contacts method
    puts 'Which arribute would you to search? 1. First name 2. Last name 3. email 4. note'
    attribute_selection = gets.to_i
  end

  # This method should accept as its argument an array of contacts
  # and display each contact in the contacts array
  def display_contacts(contacts)
    # Fill this in
    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods
    contacts.each do |contacts|
      puts "#{contact.full_name}, #{contact.email}, #{contact.id}, #{contact.note}"
    end
  end

  def attribute_name(atrribute_number)
    case  attrribute_number
    when 1 then 'first_name'
    when 2 then 'last_name'
    when 3 then 'email'
    when 4 then 'note'
    # Add other methods here, if you need them.
    end
  end

end


# Run the program here (See 'Using a class method`)
CRM.run ' '
