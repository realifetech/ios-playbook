# Getting started

## Repository setup

### Requirements
- A Bitbucket account added to the [frontier repository](https://bitbucket.org/livestyled-dev/frontier.ios/src/master/)
- The [git CLI](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed

### Instructions
The above repository can be cloned by running the following terminal command within the project's directory via SSH:
SSH
```
git clone git@bitbucket.org:livestyled-dev/frontier.ios.git
```
or HTTPS:
```
git clone https://{yourusername}@bitbucket.org/livestyled-dev/frontier.ios.git
```

## Installing dependencies

### Requirements
- Permission to access the [Kaltura repository](https://livestyledios@bitbucket.org/livestyled-dev/kaltura-ios-sdk.git)
- The [CocoaPods CLI](https://cocoapods.org)

### Instructions
Inside the project's directory, run:
```
pod install
```
If you run into issues when switching between brances with different pods, you may need to run:
```
pod install --repo update
```

## Running the project

### Requirements
- XCode 10.2.1

### Instructions
1. Open the .workspace file in the project's directory
2. Within Xcode's **Product > Destination** menu, select a device (simulator or plugged in device) to run the app on
3. Within the same menu, select **Run**, or hit the play button

## Configuring environments
### To change the environment that the app points to (staging or release):
1. Within Xcode, select **Product > Scheme > Edit Scheme**.
2. Within the Run scheme, choose either Staging or Release as the build configuration
3. Run the app

### To manually change the endpoints that the app points to:
1. Within Xcode, open **Environments.plist**
2. Change the base URL for the scheme you are running (e.g. **concertLiveAPIBaseURLV3**)
3. Run the app

### To change the enabled features:
1. Within Xcode, open **AppCongif.plist**
2. Change the the value for the feature you wish to enable or disable
3. Run the app