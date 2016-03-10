require 'test/unit/assertions'
include Test::Unit::Assertions

begin
  assert false, "Hello World"
rescue Exception => exception
  puts "Exception was raised: #{exception.class}"

end