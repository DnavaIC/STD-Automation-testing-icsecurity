# Appium installation - IC Security App

This repository is an initiative to kickstart the mobile automation of testing processes at Inter-Con Security, a company that previously had no automation in this area. It also serves as a proposal for adopting automation practices. Please note that all the work here is currently under development.

## Set up your project and start scripting. (recommended)

In case this is your first time automating cases in icsecurity mobile, it is highly recommended that you take a look at the complete guide found in the getting started guide. It will save you a lot of research, trial and error. 
Please go to [IC security - mobile automation wiki](https://github.com/DnavaIC/STD-Appium-intercon/wiki)

## Quick run setup (Advanced)

1. with Node and Python pre-installed

```
npm i --location=global appium
```
```
appium driver install uiautomator2
```
```
pip install robotframework
```
```
pip install robotframework-appiumlibrary
```

2. Install Android Studio, which includes SDK and install JDK binarie.

Once you install your tools and extract the corresponding path, create new system variables.

SDK (Android)
```
Name: ANDROID_HOME
path: C:\Users<your username>\AppData\Local\Android\Sdk\platform-tools
```

JDK (Java)
```
Name: JAVA_HOME
path: C:\java\jdk-23.0.2\bin
```

Don't forget to add the same two variables in path system variables

3. Initialize appium server

run appium command 
```
appium
```
Connect your hardware device / turn on your emulation device. 

4. Run your test
clone the repository and run 
```
robot tests\inter-con-app\sample-robot-appium.robot
```


## Contributing

Please note that all the work here is currently under development.
You are welcome to contribute to the project; just send your PR.

---
Author and maintainer: Diego E. Nava, dnava@icsecurity.com
