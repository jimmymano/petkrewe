Given('I have no cheese') do
  puts "I have no cheese"
end

When('I press the make {string} cheese button') do |type|
  puts "I press the make #{type} cheese button"
end

Then('I should see the {string} message') do |message|
  puts "I should see the #{message} message"
end