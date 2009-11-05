Given /^I have a (\d+) x (\d+) gameboard$/ do |width, height|
  start_game :size => [width, height]
end

Given /^I have a (\d+) x (\d+) gameboard with (?:a )?mines? at the following co\-ordinates:$/ do |width, height, table|
  start_game :size => [width, height], :mines => table.rows
end

When /^the game is over$/ do
  # For now, the game is over immediately
end

Then /^I should see the following output$/ do |expected_output|
  @game.read.should == expected_output
end
