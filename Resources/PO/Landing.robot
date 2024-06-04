*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${LANDING_HEADING} =    //*[@id="loginform"]/div/div/div/div/h2


*** Keywords ***


Navigate To
    Go To    ${URL.${ENVIRONMENT}}
    # ${URL.${ENVIRONMENT}} macht Dictionary


Verify Page Loaded
    Element Text Should Be    ${LANDING_HEADING}    Login
    #Page Should Contain    Welcome To Our Studio!

