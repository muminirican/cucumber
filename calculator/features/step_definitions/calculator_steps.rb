Given(/^the input "(.*?)"$/) do |input|
  @input = input
end
#@input is an instance variable, it will be used and cleared

When(/^the calculator is run$/) do
  @output = `ruby calc.rb #{@input}`
  #it says take the current value of @input and use it as a parameter
  raise('Command failed') unless $?.success?
end

Then(/^the output should be "(.*?)"$/) do |expected_output|
  expect(@output.to_i).to  eq(expected_output)
  # had to insert "to_i" because the output was not matching
end
