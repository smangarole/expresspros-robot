*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    https://www.jackson.com/dash/tools-resources.html#resources
&{DC}    os=Windows    os_version=10    browser=Chrome    browser_version=78.0    build=RobotFramework    name=parallel_test

*** Test Cases ***
Parallel Tests
    Open Browser    ${URL}    &{DC}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC}
    Page Should Contain Element    xpath=//*[@id="learnAbout"]    5s 
    Page Should Contain Element    name=tools    5s
    Sleep    5  
    Input Text    id=filter-text    calculator   
    Press Keys    id=filter-text    ENTER
    Sleep    5           
    Page Should Contain Link    tag:a    https://www.jackson.com/dash/videos/jackson-s-retirement-expense-calculator.html 
    Close Browser