module PageObjects
  module Sections
    module GymHomePage
      class GymNavigationBar < SitePrism::Section

        element :find_a_gym_btn, "a[href='/gyms#locations']"

        def find_a_gym
          find_a_gym_btn.click
        end

      end
    end
  end
end