Given(/^am on Verve Offers Manager login page$/) do
  @browser.goto "http://offers-qa.vervewireless.com/"
end

And(/^I enter a valid email and password$/) do
  visit(LoginPage) do |page|
    page.username = "verve.qa+doreen@gmail.com"
    page.password = "MqF{5QZwhOv@"
    page.login_button
  end
end

Then(/^should be logged in verve offer manager$/) do
  expect(on(MerchantPage).navigation_bar_element).to be_visible
  on(MerchantPage)
end

And(/^I select the marchants tab$/) do
  @current_page.merchant_link
end

And(/^I click on new marchants button$/) do
  @current_page.new_merchant_link
end

Then(/^I should be on new marcharnt page$/) do
  expect(@current_page.create_marchant_element).to be_visible
end

And(/^I fill in the new marchart form$/) do
  @current_page.populate_page_with :merchant_name => MERCHANT['NEW_MERCHANT']['merchant_name'],
  :merchant_external_id => MERCHANT['NEW_MERCHANT']['merchant_external_id'],
  :merchant_address => MERCHANT['NEW_MERCHANT']['merchant_address'],
  :merchant_city => MERCHANT['NEW_MERCHANT']['merchant_city'],
  :merchant_state => MERCHANT['NEW_MERCHANT']['merchant_state'],
  :merchant_postal_code => MERCHANT['NEW_MERCHANT']['merchant_postal_code'],
  :merchant_phone => MERCHANT['NEW_MERCHANT']['merchant_phone'],
  :merchant_latitude => MERCHANT['NEW_MERCHANT']['merchant_latitude'],
  :merchant_longitude => MERCHANT['NEW_MERCHANT']['merchant_longitude'],
  :merchant_web_url => MERCHANT['NEW_MERCHANT']['merchant_web_url'],
  :merchant_email_address => MERCHANT['NEW_MERCHANT']['merchant_email_address'],
  :merchant_tagline => MERCHANT['NEW_MERCHANT']['merchant_tagline'],
  :merchant_description => MERCHANT['NEW_MERCHANT']['merchant_description'],
  :merchant_rating => MERCHANT['NEW_MERCHANT']['merchant_rating'],
  :merchant_main_category => MERCHANT['NEW_MERCHANT']['merchant_main_category'],
  :merchant_logo_image_url => MERCHANT['NEW_MERCHANT']['merchant_logo_image_url'],
  :merchant_brand_image_url => MERCHANT['NEW_MERCHANT']['merchant_brand_image_url'],
  :merchant_brand_image_url => MERCHANT['NEW_MERCHANT']['merchant_brand_image_url'],
  :merchant_brand_image_slug => MERCHANT['NEW_MERCHANT']['merchant_brand_image_slug']
  end


And(/^I click on create merchant button$/) do
  @current_page.create_marchant
end