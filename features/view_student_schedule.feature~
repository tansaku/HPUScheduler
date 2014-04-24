Feature: View Student Schedule
  As an Academic Advisor
  So I can help the Student schedule courses
  I want to be able to view their schedules

  Scenario: View Student Schedule
    Given that I am in Google Apps on the HPU Pipeline
    When I click on "View Eric Gagnon's Schedule"
    Then I should be on "Eric Gagnon's Schedule" page
    And I should see "Courses", "Instructor", "Course Day", "Time", "Location", "Work Day", and "Work Time"

  Scenario: Student has no classes but has work schedule
    Given that I am in Google Apps on the HPU Pipeline
    When I click on "View Tom Wassum's Schedule"
    Then I should see "Tom Wassum's Schedule" page
    And I should see "No Classes Available", "Work Day", and "Work Time"

  Scenario: Student has no work schedule but has classes
    Given that I am in Google Apps on the HPU Pipeline
    When I click on "View Tom Wassum's Schedule"
    Then I should see "Tom Wassum's Schedule" page
    And I should see "Courses", "Instructor", "Course Day", "Time", "Location", and "No Work Schedule Available"
