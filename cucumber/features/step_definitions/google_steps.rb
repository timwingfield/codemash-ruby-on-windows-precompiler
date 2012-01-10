Given /^I am on google\.com$/ do
  visit 'http://google.com'
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

Then /^I should see results$/ do
  page.should have_css('div#res li')
end
