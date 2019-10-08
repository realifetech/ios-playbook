# Getting started

## Repository setup

**Requirements**
- A Bitbucket account added to the [frontier repository](https://bitbucket.org/livestyled-dev/frontier.ios/src/master/)
- The [git CLI](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed

Our repository is hosted on Bitbucket at [
The repository can be cloned via SSH or HTTPS.
Run one of the following commands inside the directory that you want the project to reside within.
SSH:
```
git clone git@bitbucket.org:livestyled-dev/frontier.ios.git
```
HTTPS:
```
git clone https://{yourusername}@bitbucket.org/livestyled-dev/frontier.ios.git
```

## Installing dependencies

**Requirements**
- Permission to access the [Kaltura repository](https://livestyledios@bitbucket.org/livestyled-dev/kaltura-ios-sdk.git)
- The [CocoaPods CLI](https://cocoapods.org)
Inside the project's directory, run:
```
pod install
```
If you run into issues when switching between brances with different pods, you may need to run:
```
pod install --repo update
```

## Running the project

## Changing endpoints
