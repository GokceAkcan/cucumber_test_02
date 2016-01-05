Feature: I am still learning cucumber with stability
  In order to try something new

  Scenario: I will fill text boxes and pick from comboboxes
    Given I am on www.aktifsinif.com web site
    When I visit Kaynaklar page
    And I fill textbox with "sayılar"
    And I pick "İlköğretim" from levels
    And I pick "Matematik" from courses
    And I pick "Flipchartlar" from types
    And I click Ara button
    Then I should see results page