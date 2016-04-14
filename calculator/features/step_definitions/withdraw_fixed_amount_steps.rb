Given /^I have \$(\d+) in my account$/ do |arg1|
  puts "you have " + arg1.to_s + " dollars"
  @balance = arg1
end

When /^I choose to withdraw the fixed amount of \$(\d+)$/ do |arg1|
  puts "you dispose " + arg1.to_s + " dollars"
  @withdraw = arg1
end

Then /^I should (?:receive \$(\d+) cash|see an error message)$/ do |arg1|
  puts @withdraw
  if @balance >= @withdraw
    @error = "no error"
    expect(@withdraw.to_i).to eq(arg1)
    expect(@error).to eq("no error")
  else
    @error = "error, you don't have enough money"
    expect(@error).to eq("error, you don't have enough money")
  end

end

Then /^the balancee of my account should be \$(\d+)$/ do |arg1|
  if @balance >= @withdraw
    @balance = @balance - @withdraw
    puts @balance
    expect(@balance.to_i).to eq(arg1)
  else
    expect(@balance.to_i).to eq(arg1)
  end

end
