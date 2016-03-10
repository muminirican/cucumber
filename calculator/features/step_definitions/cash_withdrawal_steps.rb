Given /I have \$(100) in my account/ do |amount|
  #TODO: code goes here
end

Given /I have deposited \$(\d+) in my (\w+) Account/ do |amount, account_type|
  pending ("need to design the Account interface")
end

Given /I transfer \$(\d+) from my (\w+) Account into my (\w+) Account/ do |amount, account_type_1, account_type_2|
  #TODO: code goes here
end

Given /the balance of the (\w+) Account should be \$([0-9]+)/ do |account_type, amount|
  #TODO: code goes here
end

Given /I have (\d+) cucumbers? in my basket/ do |amount|
  #TODO: code goes here
end

When /I request \$(20)/ do |amount|
  #TODO: code goes here
end

Then /^\$(\d+) should be dispensed/  do |amount|
  #TODO: code goes here
end

Given /I (?:visit|go to) the homepage/ do
  #TODO: Code goes here
end