# Appium installation - IC Security App
## Quick install guide

The purpose of this repository is to provide new testers with installation guidance, thereby reducing the time required for them to become proficient.

## Index

1. Install Appium
2. Install SDK and JDK
3. Install Appium inspector
4. Configure Appium inspector


## Downloads

- [Node JS](https://nodejs.org/)
- [VS code](https://www.notion.so/Appium-installation-IC-Security-App-1b4e98ee5907804e84f6e9e1327b3740?pvs=21) (or any code editor)
- [Appium](https://appium.io/docs/en/2.0/quickstart/install/)
- [Appium inspector](https://github.com/appium/appium-inspector/releases/tag/v2024.12.1)
- [UIautomator2](https://appium.io/docs/en/2.0/quickstart/uiauto2-driver/#install-the-driver-itself)
- [Python](https://www.python.org/downloads/)
- [Android studio](https://developer.android.com/studio?hl=es-419) + SDK
- [JDK (path y JAVA_HOME)](https://www.oracle.com/java/technologies/downloads/#jdk23-windows)


## Installing Appium

1. Install [Node JS](https://nodejs.org/) 
2. Install [Python](https://www.python.org/downloads/)
3. Installing Appium is as easy as running a single NPM command:
    
    `npm i --location=global appium`
    
4. Check your installation running `appium` command and you should see some output like this: 
    
    `[Appium] Welcome to Appium v2.0.0` 
    
5. If all your Appium installation looks ok, run the command: 
    
    `appium driver install uiautomator2`
    
    output:
    
    ```powershell
    Attempting to find and install driver 'uiautomator2'
    ✔ Installing 'uiautomator2' using NPM install spec 'appium-uiautomator2-driver'
    Driver uiautomator2@2.0.5 successfully installed
    - automationName: UiAutomator2
    - platformNames: ["Android"]
    ```
    
6. Now, start the Appium server again (run `appium`), and you should see that the newly-installed driver is listed as available:

    
    output: 
    

```powershell
[Appium] Available drivers:
[Appium]   - uiautomator2@2.0.5 (automationName 'UiAutomator2')
```

---

## SDK & JDK

1. Install [Android studio](https://developer.android.com/studio?hl=es-419) 

2. Open Android studio and search for SDK Manager. More actions > SDK Manager
3. Copy the path to your SDK


<img src="/docs/img/img1.png" alt="Image 1" style="max-width: 100%; height: auto;">
<img src="/docs/img/img2.png" alt="Image 2" style="max-width: 100%; height: auto;">

4. In windows search for “Environment variables”.

And go to Advanced options > Environment variables > New…

5. Create a new variable with the name: ANDROID_HOME and set your path: 
    
    C:\Users\<your username>\AppData\Local\Android\Sdk\platform-tools
    

<img src="/docs/img/img3.png" alt="Image 3" style="max-width: 100%; height: auto;">

1. Now lets download java developers kit binary archive —> [https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.zip](https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.zip)
2. Create a new folder in your windows main root and unzip the JDK
3. navigate to the bin folder, which is inside JDK and copy the path
4. As we do with Android_home (SDK), create a new envirnomnet variable called JAVA_HOME
    
<img src="/docs/img/img4.png" alt="Image 4" style="max-width: 100%; height: auto;">

    
5. The last step is pretty simple, inside your system variables open “path” and add both paths, SDK and JDK
    
<img src="/docs/img/img6.png" alt="Image 6" style="max-width: 100%; height: auto;">

---

## Appium inspector

What is Appium inspector?

Appium Inspector is a GUI assistant tool for Appium, providing visual inspection of the application under test. It can show the application page screenshot along with its page source, and includes various features for interacting with the app.

<img src="/docs/img/img5.png" alt="Image 5" style="max-width: 100%; height: auto;">

The installation is pretty simple, just download the file corresponding to your system. 

> IMPORTANT: the app is not signed, if you have doubts follow this simple guide: [Installation - Appium Inspector](https://appium.github.io/appium-inspector/latest/quickstart/installation/#windows)
> 

PENDIENTE: Agregar instrucciones de como se configura

---

PENDIENTE: Agregar repositorio para probar tu instalacion