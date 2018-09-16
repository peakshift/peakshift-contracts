# Incentives and disincentives

### Background

```gherkin
Given a task is estimated to be "10hrs"
And the worker is being paid "$10" each hour of work
And the worker deposits a sum of "$100" to claim the task
```

### Scenarios

```gherkin
When the work is approved
And worker logged < "10hrs" on the task
Then the worker will receive a payout totalling of "$200"
```
-  this can be seen as an incentive for persons to finish tasks quickly

```gherkin
Given the worker goes "2hrs 12m" over the estimate
When the work is approved
Then "$22" is deducated from your stake
And the worker will receive a payout totalling "$178"

Given the worker goes 1hrs over the estimate
When the work is approved
Then "$10" is deducated from the worker's stake
And the worker will receive a payout totalling "$190"

# note* randomised test needed
```
-  you will get back the money you initially deposited

```gherkin
Scenario: Reassign task if incomplete and worker is >= "50%" over the estimate
When the worker goes "5hrs" over the estimate
And the work is not approved
Then the  is deducated from your stake
And the worker will receive a payout totalling "$180"
```
- However, if you are over the estimate by more than half of the estimated time, it would be best to reassign the task to someone else before you're further penalized and lose all of your deposit
