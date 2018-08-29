# Peak Shift — Processes in Code

Peak Shift Ltd. is a digital agency — this is an experiment where we will define our business processes then try to enforce them using the Ethereum blockchain.

While we have always strived to operate in a transparent, and fair manner as our traditional company — being centralised will always foster a feeling of mistrust, and suspicion by participants.

#### Core components

- Collaboration
- Trust
- Quality

#### Mission / Ideals

- Replication is waste, collaborate or bring something new into the world.
- Technology can be used for good, but it can be a weapon.
- Be excelent.

#### Work Collaboration

- Stop wastage and competition towards the bottom.
- Invite someone else to work on a task.
- Groups, as a feature is necessary for collaborations.
- Economics of collaborations.

#### Proof of Work

- Verifiable proofs that work has been taken place in the event of a dispute.

## Structure [DRAFT]

### Participants
- Project Owner
- Worker
- Reviewer

### Work
- Write Scenarios
- Review Scenarios
- Write Tests
- Review Tests
- Review Pull Request
- Write Improvement Proposal

### Actions
- Request Work
- Dispute Invoice
- Withdraw Salary
- Estimate Scenario
- Decline Pull Request
- Approve Pull Request

### Governance

- Approve Estimate
- Vote for Proposal

## Token Curated List

- Pull Requests
  - Worker `candidate`
  - Reviewers `token holders`
  - Organisation `consumer`
- Estimates
  - Worker `candidate`
  - Reviewers `token holders`
  - Project Owner `comsumer`
- Proposals
  - Worker `candidate`
  - Reviewers `token holders`
  - Everyone `comsumer`

## Implementation

### Install

Ensure you have the following tools installed:

- **[solc]()**, solidity compiler
- **[solium]()**, solidity linter

### Writing Contracts

1. `solium --watch -d .`
2. Edit contract file, solium will watch for changes up save and alert you of problems right in terminal.

### Documenting Processes

Using the gherkin format, Process should be defined as a series of scenarios.

Gherkin is integral to give us a structure where both technical and non-technical participants can understand — it should be used to document all standards and processes.

Gherkin is also used for feature definition for Client projects, see [Projects](projects.md).
