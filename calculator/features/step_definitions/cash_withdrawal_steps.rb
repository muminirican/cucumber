#require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
#this is moved to env file under support

Given /^my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  # @my_account = Account.new this line is no more necessary after KnowsMyAccount
  my_account.credit(amount)
end
When /^I withdraw (#{CAPTURE_CASH_AMOUNT}) new$/ do |amount|
  # teller = Teller.new(cash_slot)
  teller.withdraw_from(my_account, amount)
end
Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/ do |amount|
  expect(cash_slot.contents).to eq(amount)
end

Then /^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  expect(my_account.balance).to eq(amount)
end
