require 'capybara/cucumber'
require 'capybara/dsl'


page_to_visit = 'http://www.aktifsinif.com/'

Given(/^I am on www\.aktifsinif\.com web site$/) do

  visit(page_to_visit)
end

When(/^I visit Kaynaklar page$/) do
  find('#ctl00_IcerikContentPlaceHolder_UcAnaSayfaOrta1_UcAnaSayfaMenu1_KaynaklarHyperLink').click
end

And(/^I fill textbox with "([^"]*)"$/) do |search_text|
  fill_in('ctl00_ctl00_IcerikContentPlaceHolder_UcMasterUstMenuSub1_UcMasterUstArama1_AranacakTextBox', with: search_text)
end

And(/^I pick "([^"]*)" from levels$/) do |picked_level|
  item_id = '#ctl00_ctl00_IcerikContentPlaceHolder_UcMasterUstMenuSub1_UcMasterUstArama1_SinifDropDownList'
  find(item_id).select(picked_level)
end

And(/^I pick "([^"]*)" from courses$/) do |picked_course|
  item_id = '#ctl00_ctl00_IcerikContentPlaceHolder_UcMasterUstMenuSub1_UcMasterUstArama1_DersDropDownList'
  find(item_id).select(picked_course)
end

And(/^I pick "([^"]*)" from types$/) do |picked_type|
  item_id = '#ctl00_ctl00_IcerikContentPlaceHolder_UcMasterUstMenuSub1_UcMasterUstArama1_AlanDropDownList'
  find(item_id).select(picked_type)
end

And(/^I click Ara button$/) do
  item_id = '#ctl00_ctl00_IcerikContentPlaceHolder_UcMasterUstMenuSub1_UcMasterUstArama1_AraButton'
  find(item_id).click
end

Then(/^I should see results page$/) do
  expect(page).to have_content 'Arama Sonucu'

end