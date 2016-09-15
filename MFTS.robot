*** Settings ***
Suite Setup    Open the application
Suite Teardown    Close the application
Library    AppiumLibrary
Library    OperatingSystem
Library    Process
Library    CustomLibrary.py


*** Variables ***

${platform_version}    "6.0.1"
${platform_name}    "Android"    
${apk_path}    "C:/Users/Keng Hun/workspace/Test/app.apk"
${udid}    "0515444646413736"
${phone_name}  "Note5"

${appium_command}    appium --command-timeout "7200" --debug-log-spacing --platform-version ${platform_version} --platform-name ${platform_name} --app ${apk_path} --udid ${udid} --device-name ${phone_name} --launch-timeout "90000" 
${menu_button}    //android.widget.ImageButton
${input_control_menu}    //android.widget.TextView[@text='Input Controls']
${text_field_subheader}    //android.widget.TextView[@text='Text Field']
${text_field_id}    //android.widget.EditText
${checkbox_subheader}   //android.widget.TextView[@text='Checkbox']
${unchecked_text}    //android.widget.TextView[@text='Unchecked']
${checked_text}    //android.widget.TextView[@text='Checked']
${check_box_id}    //android.widget.CheckBox


${text_data}    vodQA is awesome!


*** Test Cases ***

Verify TextField
    ${source}=   Get Source
    Log   ${source}
    
    
    Given I navigate to the side menu bar
    When I click on Input Controls menu
    And I can see the input controls page
    And I should be able to enter text on the textfield
    
    
Verify Checkbox
    Given I navigate to checkbox page
    When I select checkbox
    Then I should see the Checked status
    
    
    
*** Keywords ***

Then I should see the Checked status
    Wait Until Page Contains Element  ${checked_text} 
    

When I select checkbox
    Click   ${check_box_id} 

Given I navigate to checkbox page
    Close the application
    Open the application
    Given I navigate to the side menu bar
    When I click on Input Controls menu
    Then I shoud be able to click on checkbox header
    
    
    
Then I shoud be able to click on checkbox header
    Click   ${checkbox_subheader}
    
And I should be able to enter text on the textfield
    Type   ${text_field_id}   ${text_data}
    

And I can see the input controls page
    Wait Until Page Contains Element  ${text_field_id}
    

When I click on Input Controls menu
    Click   ${input_control_menu}
    Wait Until Page Contains Element  ${text_field_subheader}

Click
    [Arguments]    ${id}
    Wait Until Page Contains Element    ${id}
    Click Element    ${id}
    
Type
    [Arguments]    ${id}   ${text}
    Wait Until Page Contains Element    ${id}
    Input Text   ${id}     ${text}
    Hide Keyboard    
    
        

Given I navigate to the side menu bar
    Click    ${menu_button}
    Wait Until Page Contains Element    ${input_control_menu}

Print
    [Arguments]  ${msg}
    Log  ${msg}
    
Open the application
    Print  Open app here
    Start the appium server
    Open Application    http://127.0.0.1:4723/wd/hub   
    
    
Close the application
    Print  close app here
    Close Application
    Kill Node Instances
    
Start the appium server
    Print  start the appium server here
    Kill Node Instances
    Print    ${appium_command}
    CustomLibrary.Start Appium Server  ${appium_command}
    Sleep   5s
    
    
Kill Node Instances
    OperatingSystem.Run    taskkill.exe /F /IM node.exe
    
 