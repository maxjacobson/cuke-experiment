class I
  attr_accessor :location
end

When(/^I exist$/) do
  @i = I.new
end

When(/^I am here$/) do
  @i.location = 'here'
end

Then(/^I am where I am$/) do
  raise 'hell' unless @i.location == @i.location
end

Then(/^I am not where I am$/) do
  raise 'hell' if @i.location == @i.location
end
