Feature: Invoicing
As an Organisation
We want to be able to collect payment for work successfully done
So that we can distribute it fairly to those who have spent time working

  Scenario: Create Invoice
    Given that workers record their time for the work done
      And a rate for the work completed is given
     When the deadline for a project is reached
      And the client has to be charged/invoiced for the work completed
     Then the total sum of balance is calculated
      And an invoice is created
      And the invoice should be sent to the client
  
  Scenario: Pay full amount to invoice
    Given that an invoice has been issued for work completed
      And the client wants to settle the balance in full
     When the client sends the payment
     Then the payment gets recorded
      And the invoice is marked as PAID
      And the client receives a confirmation of payment
  
  Scenario: Pay partial amount to invoice
    Given that an invoice has been issued for work completed
      And a client wants to make a payment towards the balance of the invoice
     When the client sends the payment
     Then the payment is recorded
      And the remaining invoice balance should be <outstanding> (<total> - <paid>)
      And the client should receive a confirmation of the payment
  
    Examples: Payments
      | total | paid  | outstanding | 
      | $1500 | $800  | $700        | 
      | $5800 | $1300 | $4500       | 
  
  Scenario: Dispute an invoice
  
  Scenario: Return all payments back to senders
