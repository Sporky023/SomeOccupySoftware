Feature: Tagging Document Text

  As a reader
  In order to help others find text they want
  I want to tag sections of text within a document
  
  Scenario: reader tags some text
    Given a document with body: "Come and listen to a story 'bout a man named Jed. Poor mountaineer barely kept his family fed. Then one day he was shooting for some food, and up through the ground come a bubbling crude" and title: "Ballad of Jed Clampett"
    When I go to the documents page
    Then I should see "Ballad of Jed Clampett"
    When I follow "Ballad of Jed Clampett"
    Then I should see the document's body
    When I pretend to highlight "bubbling crude" # pretend because I don't know how to do this
    Then I should see a form
    When I fill in "tags" with "oil, black gold, Texas tea"
    And I press "save tags"
    Then I should see "tags saved"