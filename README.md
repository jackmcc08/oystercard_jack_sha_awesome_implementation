
## Add the Balance

Write an RSpec test for the Oystercard class that will test that a freshly initialized card has a balance of 0 by default, see it fail, then write an implementation (Oystercard class code) that will make the test pass.

In order to use public transport
As a customer
I want money on my card

- [x]  Write up a plan for how you will interact with your code and manually test in IRB.
- [x]  Create a unit test for the Oystercard class
- [x]  Write a failing test that checks that a new card has a balance
- [x]  Write code that will make this test pass
- [x]  Now refactor by setting the balance in initialize using an instance variable
- [x]  Remove the balance method entirely and replace with an attr_reader

 >Oystercard.balance
 >> 0


## Enable top up functionality

Write a new test that checks that if a top_up method is invoked with the top up value as the argument, the balance of the card will increase by that amount.

In order to keep using public transport
As a customer
I want to add money to my card

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Write a test for the top_up method
- [x] Make sure the test fails before implementing the method
- [x] Implement the method to make the test pass

## Enforce maximum balance

Use test-driven development approach to update the top_up method to raise an error if the action would take the card beyond the limit.

In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Write a test that checks the top_up method throws an exception if the new balance would exceed the limit.
- [x] Use a constant to store the limit
- [x] Implement the limit in the top_up method. Use an inline if statement to check if the limit would be exceeded
- [x] Make the error message include the limit value
- [x] Use interpolation to keep your code DRY

## Deduct the money

Write the deduct method that will reduce the balance by a specified amount using a test-driven approach.

In order to pay for my journey
As a customer
I need my fare deducted from my card

- [ ] Write up a plan for how you will interact with your code and manually test in IRB.
- [ ] Write a test for the deduct method, see it fail
- [ ] Implement the method, see the test pass

>oystercard.deduct(fare - 3)
>> @balance (10) - fare (3) = new_balance
>  oystercard.balance
>> @balance = 7