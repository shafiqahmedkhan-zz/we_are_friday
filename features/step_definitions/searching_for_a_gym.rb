Given(/^I am visiting the website for the first time$/) do
  @gymhomepage = PageObjects::GymHomePage.new
  @gymhomepage.load
end

When(/^I view the list of Nuffield gyms$/) do
  @gymhomepage = PageObjects::GymHomePage.new
  @gymhomepage.gym_navigation_bar.find_a_gym
end

Then(/^I should be able to browse gyms by regions in the UK$/) do
  @gymhomepage = PageObjects::GymHomePage.new
  @gymhomepage.find_your_local_gym.regions.first.click
  puts @gymhomepage.find_your_local_gym.first_gym_location
  expect(@gymhomepage.find_your_local_gym.first_gym_location).to be
end

And(/^I search for gyms near my home$/) do
  @gymhomepage = PageObjects::GymHomePage.new
  @gymhomepage.find_your_local_gym.search_postcode 'RM82SJ'
  sleep(10)
end

Then(/^I should see a list of gyms near me$/) do
  @gymhomepage = PageObjects::GymHomePage.new
  expect(@gymhomepage.find_your_local_gym.first_gym_location).to be
end

Given(/^I am a repeat visitor$/) do
  step 'I am visiting the website for the first time'
  step 'I search for gyms near my home'
end