class ContactMethod

  def initialize(contact)
    @contact = contact
  end

  attr_reader :contact

  attr_accessor :type, :role, :value

end
