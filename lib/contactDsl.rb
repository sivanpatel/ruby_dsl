class ContactDSL

  def initialize(contact)
    @contact = contact
  end

  def name(first_name, last_name)
    @contact.first_name = first_name
    @contact.last_name = last_name
  end

  def company(name)
    @contact.company = name
  end

  def activities
    @contact.activities
  end

  def contact_method(type, role, value)
    method = ContactMethod.new(@contact)
    method.type = type
    method.role = role
    method.value = value
    @contact.contact_methods << method
  end

  def method_missing
    if values.empty?
      super
    else
      contact_method(name, *values)
    end
  end

end
