*** Settings ***
Library    AppiumLibrary
Library    Process    

*** Variables ***
${USERNAME}    siddharthamdemo1    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    3iskPrkpEsseiwerAxKB    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://siddharthamdemo1:3iskPrkpEsseiwerAxKB@hub-cloud.browserstack.com/wd/hub

*** Keywords ***
Connect to Browserstack
    Open Application    ${REMOTE_URL}    app=bs://7b8a16bda45083bd681015b9efae9bd73ed55edc   name=single_test    build=RobotFramework    platformName=Android    os_version=7.0    device=Samsung Galaxy S8

Close
    Close Application