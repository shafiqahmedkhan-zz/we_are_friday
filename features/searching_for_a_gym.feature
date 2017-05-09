Feature: Searching for a gym
  As a prospective Nuffield gym customer
  I want to find the gyms nearest to my home
  In order to decide which gym to join

  Background:
    Given I am visiting the website for the first time

  Scenario: Browse by region
    When I view the list of Nuffield gyms
    Then I should be able to browse gyms by regions in the UK

  Scenario: Search for a gym near me
    When I view the list of Nuffield gyms
    And I search for gyms near my home
    Then I should see a list of gyms near me

  #Scenario: Save user's location for future visits
  #  Given I am a repeat visitor
  #  When I view the list of Nuffield gyms
  #  Then I should see a list of gyms near me