require 'site_prism'
require_relative 'sections/gym_home_page/gym_navigation_bar'
require_relative 'sections/gym_home_page/find_your_local_gym'

module PageObjects
  class GymHomePage < SitePrism::Page

    set_url 'https://www.nuffieldhealth.com/gyms'
    section :gym_navigation_bar, PageObjects::Sections::GymHomePage::GymNavigationBar, '.subnav'
    section :find_your_local_gym, PageObjects::Sections::GymHomePage::FindYourLocalGym, '#locations'

  end
end