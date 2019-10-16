# Code Review and QA

## Code Review
### What to look for 👀
- Does the work meet the requirements?
- Are there sufficient unit tests?
- Does the unit test suite run?
- [Code smells](http://www.laputan.org/pub/patterns/fowler/smells.pdf)
   - Duplicated code (if you see the same code in more than one place, it should be unified)
   - Long methods (are easier to test, more robust, and hide less complexity)
   - Large classes (usually don't obey the Single Responsibility Principle... split them up)
   - Long parameter lists (are hard to read and difficult to use... just pass enough for the function to get what it needs, which may be an object)
   - Divergent change (if you need to change multiple methods every time this other thing changes, multiple objects will be better than one)
   - Shotgun surgery (a change requires lots of small changes in lots of classes)
   - Feature envy (a method seems more interested in another class than the one it's in)
   - Data clumps (the same data items together in lots of places... bunches of data that hang around together ought to be made into their own object)
   - Lazy class (classes that don't do enough to pay for themselves should be removed)
   - Middle man (delegation can go too far... cut out the middle-man if so)
   - Comments (should be warranted when used, and not used to cover up unreadable code)
- [SOLID principles](https://en.wikipedia.org/wiki/SOLID)
- [Coding standards](/etiquette/CODING_STANDARDS.md)

### Process
1. Feature branches should be created using the epic or ticket number, e.g. feature/LS-XXX or feature/IOS-XXXX.  
2. Once coding is complete, the JIRA ticket should be moved to Code Review, and a pull request created.  
3. Once the code has been reviewed and approved by at least 2 people, the ticket should be assigned back to the creator.

## QA
### Process
1. The creator will ensure that the branch is up to date with develop, add the version and build number to the ticket, and move it to Ready for QA. This is represented by the acronym **UD-VBN-R4QA** added to the pull request by the last approver.
2. Once the feature has been approved by QA, and has the green light to form part of the next release, the creator can merge it to develop.
3. The creator should then add the feature to the [version history](https://livestyled.atlassian.net/wiki/spaces/1LP/pages/103251969/iOS+Platform+Version+History), and move the ticket to Ready for Release. This is represented by the acronym **VH-M-R4R** added to the pull request by the last approver.