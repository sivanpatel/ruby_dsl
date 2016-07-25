class AddressBookDSL

  def intialize(address_book)
    @address_book = address_book
  end

  def contact(&block)
    contact = Contact.new
    contact_dsl = ContactDSL.new(contact)
    contact_dsl.instance_eval(&block)
    @address_book.contacts << contact
  end

end
