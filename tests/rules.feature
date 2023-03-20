Feature: Testing Sphinx Writer

    Test the ability to write Gherkin data to a SphinxWriter object

    Background: Some requirements for this test
        Given that this file exists

    @quarantined @JIRA-1234
    Scenario: Test a Scenario without rule

        A scenario is quicker to write than a outline but less robust.

        Given a test feature
        When the suite reaches a scenario
        Then the file is converted into rST
    Rule: Test rule with two scenarios
      Scenario Outline: Test a Scenario Outline inside a rule

          A scenario outline helps you avoid confusing duplication.

          Given I put <thing> in a blender
          When I turn the blender on
          Then it should transform into <other thing>

          Examples: Fruit
              | thing  | other thing |
              | apple  | apple sauce |
              | banana | smoothie    |

      Scenario: Multiple scenario in a rule

          Test a second scenarion inside the same rules

          Given another state
          Then the file is converted into rST
    Rule: Test rule with one scenario
      Scenario: Normal scenarios with add on steps (And, But)

          Given something
          And something else
          When something happens
          Then something happened
          And something else also happened
          And another thing happened
