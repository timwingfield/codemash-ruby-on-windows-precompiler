Given /^the calculator is open$/ do
  visit '/'
end

Given /^I want to add two numbers$/ do
  fill_in "leftOperand", :with => 5
  select '+', :from => 'operator'
  fill_in "rightOperand", :with => 2
end

When /^I perform the calculation$/ do
  click_button 'Calculate'
end

Then /^I should see my two numbers added$/ do
  find('.result').should have_content 7
end
