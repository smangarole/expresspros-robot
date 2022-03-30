*** Settings ***
Library    AppiumLibrary
Library    Process
Resource   ./PO/Common.robot
Resource   ./PO/Wiki_PO.robot    

*** Variables ***
${USERNAME}    siddharthamdemo1    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    3iskPrkpEsseiwerAxKB    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://siddharthamdemo1:3iskPrkpEsseiwerAxKB@hub-cloud.browserstack.com/wd/hub

*** Test Cases ***
Appium Test on BrowserStack
	Connect to Browserstack
	Search on wikipedia
	Close