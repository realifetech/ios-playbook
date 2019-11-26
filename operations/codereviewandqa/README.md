# Code Review and QA

## Code Review
### Process 🔖
1. Feature branches should be created using the epic or ticket number, e.g. feature/LS-XXX or feature/IOS-XXXX.  
2. Once coding is complete, the JIRA ticket should be moved to Code Review, and a pull request created.  
3. Once the code has been reviewed and approved by at least 2 people, the ticket should be assigned back to the creator.

### Checklist ✅
**Copy the below as a comment in the pull request and fill in:**  
:hammer_and_wrench::white_check_mark: Test suite passes  
:hammer_and_wrench::white_check_mark: Test coverage of new code > 75%  
:hammer_and_wrench::white_check_mark: Project runs  
:hammer_and_wrench::white_check_mark: No lint warnings introduced  
:hammer_and_wrench::white_check_mark: UI constraints set up correctly and not producing warnings  
:hammer_and_wrench::white_check_mark: Work meets the requirements  
:hammer_and_wrench::white_check_mark: Coding standards met  
:hammer_and_wrench::white_check_mark: Code free of code smells  
:hammer_and_wrench::white_check_mark: SOLID principles not violated  
:hammer_and_wrench::white_check_mark: Architectural standards met  
:hammer_and_wrench::white_check_mark: No functionality unintentionally deprecated  
:hammer_and_wrench::white_check_mark: Newly orphaned strings and images removed   

If changes are required, specify them in your comment. You can then edit your checklist when the changes have been made.

### References 📕
- [Coding standards](https://github.com/raywenderlich/swift-style-guide). We follow Ray Wenderlich's style guide.
- [Linting](https://github.com/realm/SwiftLint). We use Realm's SwiftLint tool, which will fail the build if there are more than 6 warnings.
- [Code smells](codesmells.pdf). Our favourites are below, with tips to fix inside the link ⬅.
   - **Duplicated code:** if you see the same code in more than one place, it should be unified
   - **Long methods:** are harder to test, less robust, and hide complexity
   - **Large classes:** usually don't obey the Single Responsibility Principle... split them up
   - **Long parameter:** lists are hard to read and difficult to use... just pass enough for the function to get what it needs, which may be an object
   - **Divergent change:** if you need to change multiple methods every time this other thing changes, multiple objects will be better than one
   - **Shotgun surgery:** a change requires lots of small changes in lots of classes
   - **Feature envy:** a method seems more interested in another class than the one it's in
   - **Data clumps:** the same data items together in lots of places... bunches of data that hang around together ought to be made into their own object
   - **Lazy class:** classes that don't do enough to pay for themselves should be removed
   - **Middle man:** delegation can go too far... cut out the middle-man if so
   - **Comments:** should be warranted when used, and not used to cover up unreadable code
- [SOLID principles](https://en.wikipedia.org/wiki/SOLID) ([Swift examples](SOLID.swift))
   - **Single responsibility:** a class should have one just one responsibility
   - **Open/closed:** entities should be open for extension but closed for modification
   - **Liskov's:** objects should be replaceable with instances of their subclasses without breaking the program
   - **Interface segregation:** many small and focused interfaces are better than one general-purpose interface
   - **Dependency inversion:** one should depend on abstractions and not on concretions
- [Clean Code summary](https://gist.github.com/wojteklu/73c6914cc446146b8b533c0988cf8d29)

## QA
### Process 🔖
1. The creator will ensure that the branch is up to date with develop, add to the JIRA ticket the version and build numbers along with details to help QA properly test it, and move it to Ready for QA. This is represented by the acronym **UD-VBN-R4QA** added to the pull request by the last approver.
2. Once the feature has been approved by QA, and has the green light to form part of the next release, the creator can merge it to develop.
3. The creator should then add the feature to the [version history](https://livestyled.atlassian.net/wiki/spaces/1LP/pages/103251969/iOS+Platform+Version+History), and move the ticket to Ready for Release. This is represented by the acronym **VH-M-R4R** added to the pull request by the last approver.