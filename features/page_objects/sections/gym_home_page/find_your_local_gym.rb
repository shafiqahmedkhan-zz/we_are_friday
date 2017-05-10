module PageObjects
  module Sections
    module GymHomePage
      class FindYourLocalGym < SitePrism::Section

        elements :regions, '.filter-list__link'
        element :first_gym_location, :xpath, '(//span[@class="js-location-name"])[1]'
        element :postcode_search, '#location-finder__input'

        def choosing_a_region
          find(:regions, :text => 'Central & Midlands').click
        end

        def search_postcode postcode
          postcode_search.set postcode
          postcode_search.native.send_key(:return)
        end

      end
    end
  end
end