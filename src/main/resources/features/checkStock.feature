 Feature: Check stock
     As a manager
     I want inventory to be deducted accordingly, every time the order is made.

 Background:
     Given a product Bread with price 20.50 and quantity 10 exists
     And a product Jam with price 80.00 and quantity 20 exists.

 Scenario: Buy one product
     When I buy Bread with quantity 2
     Then the number of products Bread are 8

 Scenario: Buy multiple products
     When I buy Bread with quantity 2
     And I buy Jam with quantity 1
     Then the number of products Bread are 8
     Then the number of products Jam are 19

  Scenario: Buy exceed the stock
     When I buy Bread with quantity 15
     Then the number of products Bread are 10

