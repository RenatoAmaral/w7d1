class Person
 # attr_reader :name
 # attr_writer :name
 attr_accessor  :name
  def initialize(name)
    @name = name
  end
  # def update(name)
  #    @name = name
  # end

end

p = Person.new('L. Ron')
puts p.name
# p.update("New Name")
p.name = "New Name"
puts p.name
