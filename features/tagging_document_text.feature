Feature: Tagging Document Text

  As a reader
  In order to help others find text they want
  I want to tag sections of text within a document
  
  @selenium
  Scenario: reader tags some text
    Given a document exists with title: "Ballad of Jed Clampett", body: "Come and listen to a story 'bout a man named Jed. Poor mountaineer barely kept his family fed. Then one day he was shooting for some food, and up through the ground come a bubbling crude"
    When I view the document page for "Ballad of Jed Clampett"
    And I tag "bubbling crude" with "oil, black gold, Texas tea"
    And I go to the browse tags page
    Then I should see "oil"
    And I should see "black gold"
    And I should see "Texas tea"
    When I click "oil"
    Then I should see "bubbling crude"
    And I should see "Ballad of Jed Clampett"