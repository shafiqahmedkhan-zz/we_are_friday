Feature: Searching for a gym as a repeated user
  As a prospective Nuffield gym customer who has searched for gyms previously
  I want to find the gyms nearest to my home
  In order to decide which gym to join

  Scenario: Save user's location for future visits
    Given I am a repeat visitor
    When I view the list of Nuffield gyms
    Then I should see a list of gyms near me