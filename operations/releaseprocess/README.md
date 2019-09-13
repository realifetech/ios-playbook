# Release process

## Buddybuild/BitBucket integration
Whenever a build is pushed to the BitBucket repository, buddybuild will lint it, build it, and run the tests.

For the branches listed below, buddybuild will also deploy the app to iTunes Connect.

### Platform builds:
`master`, `develop`, `release/*`, `feature/*`

### App builds:
Individual `app/XXX` branches are manually configured, as they deploy to dedicated iTunes Connect accounts.

## Buddybuild deployment configuration

## Requests for submission
Requests to submit an app for Apple review should come in the following format via the corresponding app's Slack channel.  

**iOS submit for review checklist: AppName Version(BuildNumber)**  
:white_check_mark: Confirm production tests are run and app signed off  
:white_check_mark: Confirm there are no tickets not in ready for release  
:white_check_mark: Ensure submission materials provided  
:white_check_mark: Supply what’s new text  

## Submission
Requests to release an app that have been approved by Apple should come via the corresponding app's Slack channel.  
We should respond to them with the following, checking off the items as we complete them. Details on each item can be found below.  

**iOS release checklist: AppName Version(BuildNumber)**  
:x:/:white_check_mark: Release app via iTC  
:x:/:white_check_mark: Tag build and push tags  
:x:/:white_check_mark: Update version history  
:x:/:white_check_mark: Move any tickets to done  

*Release app via iTC* = press the button!  
*Tag build and push tags* = `git tag BranchName/X.X / git push --tags`  
*Update version history* = update the date and colour for the app here: https://livestyled.atlassian.net/wiki/spaces/1LP/pages/103251969/iOS+Platform+Version+History  
*Move any tickets to done* = move JIRA tickets to done and unassign  