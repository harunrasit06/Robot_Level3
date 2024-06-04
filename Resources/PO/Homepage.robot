*** Settings ***
Library        SeleniumLibrary


*** Variables ***      
${VERIFY_HOME_PAGE} =                xpath=//*[@id="mainNav"]/div/div[1]/a 

*** Keywords ***
Open Homepage
    Go To    ${URL}
Verify Home Page Loaded
    Wait Until Page Contains Element    ${VERIFY_HOME_PAGE}


