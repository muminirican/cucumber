class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end
end

class Teller
  def initialize(cash_slot)
    @cash_slot = cash_slot
  end

  def withdraw_from(account, amount)
    @cash_slot.dispense(amount)
  end
end

class CashSlot
  def contents
    raise("I am empty")
  end

end

module KnowsTheDomain
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end

  def teller
    @teller ||= Teller.new(cash_slot)
  end
end
World (KnowsTheDomain)

CAPTURE_A_NUMBER = Transform /^\d+$/ do |number|
  number.to_i
end

CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)$/ do |digits|
  digits.to_i
end

Given /I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account/ do |amount|
  #@my_account = Account.new
  my_account.deposit(amount)
  #puts amount.to_i
  #puts my_account.balance
  expect(my_account.balance).to eq(amount),"Expected the balance to be #{amount} but it was #{my_account.balance}"
  #puts my_account.balance
  #my_account.balance.should eq(amount.to_i), "Expected the balance to be #{amount} but it was #{my_account.balance}"
  puts self
end

When /^I withdraw (#{CAPTURE_CASH_AMOUNT}) new$/ do |amount|
  #teller = Teller.new(cash_slot)
  teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed/  do |amount|
  cash_slot.contents.should == amount
end


#Then(/^the output should be "(.*?)"$/) do |expected_output|
 # expect(@output).to  eq(expected_output)
#end

#Then /^the output should be "([^"]*)"$/ do |expected_output|
 # @output.should == expected_output
#end