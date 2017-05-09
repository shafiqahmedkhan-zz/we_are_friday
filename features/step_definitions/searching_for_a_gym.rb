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
  expect(@gymhomepage.find_your_local_gym).to have(@gymhomepage.find_your_local_gym.first_gym_location)
end