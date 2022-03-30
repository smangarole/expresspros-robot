*** Settings ***
Library    AppiumLibrary
Library    Process
Resource   ./PO/Common.robot
Resource   ./PO/Wiki_PO.robot    

*** Variables ***
${SEARCH_TERM}    Browserstack

*** Test Cases ***
Appium Test on BrowserStack
	Connect to Browserstack
	Search on wikipedia    ${SEARCH_TERM}
	Close