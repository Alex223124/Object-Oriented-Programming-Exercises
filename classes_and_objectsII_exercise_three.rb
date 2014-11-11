class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# You get the error message because tattr_reader is only a "getter" setting not a "setter" for changing info.
# Can be changed to attr_accessor or attr_writer.