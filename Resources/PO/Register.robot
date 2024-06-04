*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${REGISTER_PASSWORD1_INPUT} =     id=password
#${REGISTER_PASSWORD2_INPUT} =     id=password

${REGISTER_EMAIL_INPUT} =         id=email-id

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${REGISTER_EMAIL_INPUT}


Fill Page and Submit
    [Arguments]    ${UserData}
    Input Text     ${REGISTER_EMAIL_INPUT}           ${UserData.Email} 
    Input Text     ${REGISTER_PASSWORD1_INPUT}        ${UserData.Password}
    Sleep          5s
    Click Element    submit-id


