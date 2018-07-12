Feature: General Settings

  Background:
    Given I have opened the chrome extension
    And I have completed the basic setup
    And There is a default wallet stored

  Scenario Outline: Navigating through General Settings secondary menu
    Given I am on the General Settings "<FROM>" screen
    When I click on secondary menu "<TO>" item
    Then I should see General Settings "<TO>" screen

    Examples:
    | FROM         | TO           |
    | general      | terms-of-use |
    | general      | support      |
    | terms-of-use | general      |
    | terms-of-use | support      |
    | support      | general      |
    | support      | terms-of-use |


  Scenario: Change language in General Settings
    Given I am on the General Settings "general" screen
    And I open General Settings language selection dropdown
    And I select Japanese language
    Then I should see Japanese language as selected
