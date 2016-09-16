# vodQA_Appium_RobotFramework

# Appium Windows Setup For Android
## Prerequisites:
1. Python 2.7 - https://www.python.org/downloads/
   * Set environment variable PYTHONPATH under 'System variables'
   * Install PIP -  http://stackoverflow.com/questions/4750806/how-do-i-install-pip-on-windows
1. JAVA JDK - http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
   * Set environment variable JAVA_HOME under 'System variables'
2. ANDROID SDK - https://developer.android.com/studio/index.html
   * Set environment variable ANDROID_HOME under 'System variables'
3. Node.js - https://nodejs.org/en/download/. Download and install.
4. Appium.exe (zip file) (for Appium Inspector) - https://bitbucket.org/appium/appium.app/downloads/
5. Append the following string to the Path variable unser 'System variables'
   * %JAVA_HOME%\bin;%ANDROID_HOME%\build-tools;%ANDROID_HOME%\platforms;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools;C:\Program Files\nodejs;%PYTHONPATH%;%PYTHONPATH%\Scripts;
6. Run the following commands to install appium server
   * npm install -g appium
   * npm install wd 
7. ANDROID SDK MANAGER - Open the command prompt run the command "android", android sdk manager will be opened
   * Download the required android API you needed to work with - https://source.android.com/source/build-numbers.html
   * Please note that Appium need a minimum api level of 17




