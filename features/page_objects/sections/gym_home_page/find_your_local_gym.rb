module PageObjects
  module Sections
    module GymHomePage
      class FindYourLocalGym < SitePrism::Section

        #element :central_and_midlands
        elements :regions, '.filter-list__link'
        element :first_gym_location, :xpath, '(//span[@class="js-location-name"])[1]'
        #elements :regions, :xpath, '(//ul[@class="js-location-finder-region-nav-link-container"])[1]'
        #element :central_and_midlands, :xpath, '(//a[@class="filter-list__link"])[1]'

        def choosing_a_region
          find(:regions, :text => 'Central & Midlands').click
        end

      end
    end
  end
end