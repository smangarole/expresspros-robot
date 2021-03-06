*** Settings ***
Library    SeleniumLibrary      
Library    Collections     
*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    https://www.jackson.com/dash/tools-resources.html#resources

#&{DC}    os=Windows    os_version=10    browser=Firefox    browser_version=69.0    build=RobotFramework    name=parallel_test

*** Test Cases ***
Parallel Tests 1   
    Set Test Variable    &{DC1}    os=Windows    os_version=8.1    browser=Chrome    browser_version=75.0    build=RobotFramework    name=parallel_test_1
    Open Browser    ${URL}    ${DC1}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC1}
    Page Should Contain Element    xpath=//*[@id="learnAbout"]    5s 
    Page Should Contain Element    name=tools    5s
    Sleep    5  
    Input Text    id=filter-text    calculator   
    Press Keys    id=filter-text    ENTER
    Sleep    5           
    Page Should Contain Link    tag:a    https://www.jackson.com/dash/videos/jackson-s-retirement-expense-calculator.html         
    Close Browser
    
*** Test Cases ***
Parallel Tests 2
    Set Test Variable    &{DC2}    os=Windows    os_version=10    browser=Firefox    browser_version=73.0    build=RobotFramework    name=parallel_test_2
    Open Browser    ${URL}    ${DC2}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC2}
    Page Should Contain Element    xpath=//*[@id="learnAbout"]    5s 
    Page Should Contain Element    name=tools    5s
    Sleep    5  
    Input Text    id=filter-text    calculator   
    Press Keys    id=filter-text    ENTER
    Sleep    5           
    Page Should Contain Link    tag:a    https://www.jackson.com/dash/videos/jackson-s-retirement-expense-calculator.html         
    Close Browser
    
*** Test Cases ***
Parallel Tests 3
    Set Test Variable    &{DC3}    os_version=10.0    device=Google Pixel 4 XL    build=RobotFramework    name=parallel_test_3
    Open Browser    ${URL}    android    remote_url=${REMOTE_URL}    desired_capabilities=&{DC3}
    Page Should Contain Element    xpath=//*[@id="learnAbout"]    5s 
    Page Should Contain Element    name=tools    5s
    Sleep    5  
    Input Text    id=filter-text    calculator   
    Press Keys    id=filter-text    ENTER
    Sleep    5           
    Page Should Contain Link    tag:a    https://www.jackson.com/dash/videos/jackson-s-retirement-expense-calculator.html         
    Close Browser
    
*** Test Cases ***
Parallel Tests 4
    Set Test Variable    &{DC4}    os_version=14    device=iPhone XS    build=RobotFramework    name=parallel_test_4    browserstack.appium_version=1.19.1
    Open Browser    ${URL}    iphone    remote_url=${REMOTE_URL}    desired_capabilities=&{DC4}
    Page Should Contain Element    xpath=//*[@id="learnAbout"]    5s 
    Page Should Contain Element    name=tools    5s
    Sleep    5  
    Input Text    id=filter-text    calculator   
    Press Keys    id=filter-text    ENTER
    Sleep    5           
    Page Should Contain Link    tag:a    https://www.jackson.com/dash/videos/jackson-s-retirement-expense-calculator.html         
    Close Browser
    
# Run command (test suites in parallel): pabot --processes 3   --outputdir c:\pabot-demo\reports\    *.robot
# Run command (for running test cases in parallel): pabot --testlevelsplit --processes 3 *.robot
# Note: if the process count exceeds the parallel thread limit it will automatically get queued no changes need to be done in the scripts
