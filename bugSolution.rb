```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Correct handling of method_missing
    raise NoMethodError, "Undefined method '#{method_name}' for #{self.class}"
  end
end

my_object = MyClass.new(10)
begin
  result = my_object.nonexistent_method(1,2,3)
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
```