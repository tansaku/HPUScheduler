#Author: Eric Gagnon
#Date April 24, 2014

Feature: Add Work Schedule
  As a Student
  So I can manage my work and school schedules
  I want to add my work schedule to my school schedule

  Scenario: Show add/edit work schedule form
    Given I am on Google Apps on HPU Pipeline
    When I click on "add/edit work schedule"
    Then I should see "the add/edit work schedule form"
    And I fill in "Days Working" with "Monday"
    And I fill in "Time Working" with "0800-1600"
    And I press "Submit"
    Then I should see "Schedule Added"

  Scenario: Adds Incorrect Time
    Given I am on Google Apps on HPU Pipeline
    When I click on add/edit work schedule
    Then I should see the add/edit work schedule form
    And I fill "Days Working" with "Tuesday"
    And I fill "Time Working" with "8:00 am - 4:00 pm"
    And I click on "Submit"
    Then I should see "Incorrect Time Format Please Use 24-Hour Clock"
   
