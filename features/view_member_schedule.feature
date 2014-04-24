#Author: Eric Gagnon
#Date April 24, 2014

Feature: View Member's Schedules
  As a Student Organization
  So I can better schedule club events
  I want to view my member's schedules

  Scenario: View List of Club Members
    Given I am in Google Apps on the HPU Pipeline
    When I click on "View Club Members"
    Then I should see the "Computer Club Members" page

  Scenario: View Member Schedule
    Given student has given consent
    When I click on "View Eric Gagnon's Schedule"
    Then I should see "Eric Gagnon's Schedule"
    And I should see "Courses", "Course Day", "Time", "Location", "Work Day", and "Work Time"
  
  Scenario: Access Denied to Member Schedule
    Given student has not given consent
    When I click on "View Tom Wassum's Schedule"
    Then I should see "Tom Wassum has not given consent to view his schedule"
    And I should be redirected to list of club members
