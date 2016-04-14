Given(/^a board like this:$/) do |moni|
  # table is a Cucumber::Core::Ast::DataTable
 @board = moni.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |arg1, arg2|
  # puts @board
  arg1, arg2 = arg1.to_i, arg2.to_i
  @board[arg1][arg2]= 'x'
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
  # puts expected_table
end
#
# Given /^a board like this:$/ do |table|
# # table is a Cucumber::Ast::Table
#   pending # express the regexp above with the code you wish you had
# end
# When /^player x plays in row (\d+), column (\d+)$/ do |arg1, arg2| pending # express the regexp above with the code you wish you had
# end
# Then /^the board should look like this:$/ do |table|
# # table is a Cucumber::Ast::Table
#   pending # express the regexp above with the code you wish you had
# end