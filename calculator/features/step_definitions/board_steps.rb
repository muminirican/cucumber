Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
 @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |arg1, arg2|
  arg1, arg2 = arg1.to_i, arg2.to_i
  @board[arg1][arg2]= 'x'
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
  #puts expected_table
end
