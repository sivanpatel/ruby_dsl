class Contact

  attr_accessor :first_name, :last_name, :company

  def contact_methods
    @contact_methods || = []
  end

  def activities
    @activities || = []
  end

end
