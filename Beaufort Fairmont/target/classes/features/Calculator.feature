#Author: thomas.a.english@gmail.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@Feature
Feature: Calculator
  As a user
  I want to use a calculator to do basic math
  So that I don't need to do it myself

	Background:
		Given I have a calculator

	Scenario Outline: The calculator has an Add function
		When I add <value1> and <value2>
		Then the result should be <sum>
    Examples: 
      | value1 | value2 | sum |
      |      0 |      1 |   1 |
      |      1 |      0 |   1 |
      |     -2 |      3 |   1 |
      |     10 |     15 |  25 |

	@NegativeTests
	Scenario: Adding to largest positive supported number yields overflow error
	
	Scenario Outline: The calculator has a Subtract function
		When I subtract <value1> from <value2>
		Then the result should be <difference>
    Examples: 
      | value1 | value2 | difference |
      |      0 |      1 | 			   1 |
      |      1 |      0 |         -1 |
      |     -2 |      3 |          5 |
      |     10 |     15 |          5 |
	
	@NegativeTests
	Scenario: Subtracting from largest negative number yields underflow error

	Scenario Outline: The calculator has a Multiply function
		When I multiply <value1> by <value2>
		Then the result should be <product>
    Examples: 
      | value1 | value2 | product |
      |     -2 |      3 |      -6 |
      |     10 |     15 |     150 |
      |   1000 |      1 |    1000 |
      |      1 |   1000 |    1000 |
      |      0 |      1 |       0 |
      |      1 |      0 |       0 |

	Scenario Outline: The calculator has a Divide function
		When I divide <value1> by <value2>
		Then the result should be <quotient>
    Examples: 
      | value1 | value2 | quotient |
      |      0 |      1 |        0 |
      |    -20 |      5 |       -4 |
      |    100 |     20 |        5 |

#	@NegativeTests
#	Scenario: Dividing by zero yields error
#		When I divide 1 by 0
#		Then an error should occur

	Scenario Outline: The calculator has a Square Root function
		When I take the square root of <value>
		Then the result should be <square root>
    Examples: 
      | value | square root |
      |     0 |           0 |
      |     1 |           1 |
      |     9 |           3 |

	Scenario Outline: The Square Root function handles special cases
		#If the argument is NaN or less than zero, then the result is NaN. 
		#If the argument is positive infinity, then the result is positive infinity. 
		#If the argument is positive zero or negative zero, then the result is the same as the argument.
