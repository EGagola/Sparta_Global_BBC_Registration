Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_button
end

When("I proceed to register") do
  bbc_login_page.click_register_now_button
end

When("I select I am over {int}") do |int|
  bbc_registration_page.click_over_13_button
end

When("I input my DOB") do
  bbc_registration_page.enter_day
  bbc_registration_page.enter_month
  bbc_registration_page.enter_year
  bbc_registration_page.click_continue_button
end

When(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_registration_page.enter_email
  bbc_registration_page.enter_password(password)
  bbc_registration_page.click_register_button
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_registration_page.get_error_message).to eq error
end
