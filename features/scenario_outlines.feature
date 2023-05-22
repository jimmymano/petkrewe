Feature: Scenario Outline

    As a student
    I want to learn scenario outlines
    So I can expand my automation knowledge

Scenario Outline: Using the cheese machine
Given I have no cheese
When I press the make "<type>" cheese button
Then I should see the "<message>" message

Examples:
    | type| message | 
    | Swiss | I love Swiss Cheese  | 
    | Blue | I love Blue Cheese  | 
    | Cheddar | I love Cheddar Cheese  | 
