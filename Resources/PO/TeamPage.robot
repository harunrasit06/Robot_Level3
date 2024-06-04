*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${TOP_NAV_TEAM_LINK} =         xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${TEAM_PAGE_VERIFY} =          Our Amazing Team

*** Keywords ***
Go to TeamPage
    Click Link                 ${TOP_NAV_TEAM_LINK}
Verify TeamPage
    Page Should Contain        ${TEAM_PAGE_VERIFY}

