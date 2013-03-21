Given(/^I have campaigns titled (.+)$/) do |campaigns|
  campaigns.split(', ').each do |campaign|
    Campaign.create! name: campaign
  end
end

When(/^I go to the list of campaigns$/) do
  visit '/#campaigns'
end

Then(/^I see table of campaigns within ([0-9]+) rows$/) do |count|
  page.has_selector?('table tr', count: count)
end

Then(/^I should see "(.*?)"$/) do |arg|
  within_table('campaignsTable') do
    find('td', text: arg).should have_content arg
  end
end

Given(/^I have no Campaigns$/) do
  Campaign.delete_all
end

Given(/^I am on the list of Campaigns$/) do
  visit '/#campaigns'
end

When(/^I follow "(.*?)"$/) do |arg|
  click_link arg
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |name, value|
  within('#campaigForm') do
    fill_in name.downcase, with: value
  end
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end
