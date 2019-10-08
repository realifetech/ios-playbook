# Code Review and QA

## Code Review
1. Feature branches should be created using the epic or ticket number, e.g. feature/LS-XXX or feature/IOS-XXXX.  
2. Once coding is complete, the JIRA ticket should be moved to Code Review, and a pull request created.  
3. Once the code has been reviewed and approved by at least 2 people, the ticket should be assigned back to the creator.

## QA
1. The creator will ensure that the branch is up to date with develop, add the version and build number to the ticket, and move it to Ready for QA. This is represented by the acronym **UD-VBN-R4QA** added to the pull request by the last approver.
2. Once the feature has been approved by QA, and has the green light to form part of the next release, the creator can merge it to develop.
3. The creator should then add the feature to the [version history](https://livestyled.atlassian.net/wiki/spaces/1LP/pages/103251969/iOS+Platform+Version+History), and move the ticket to Ready for Release. This is represented by the acronym **VH-M-R4R** added to the pull request by the last approver.