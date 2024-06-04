*** Settings ***
Documentation      This is some bsic info about the whole suite
Library            SeleniumLibrary
Resource           ../Resources/Common.robot
Resource           ../Resources/RobotWebApp.robot

Test Setup         Begin Web Test    ${URL}    ${BROWSER}
Test Teardown      End Web Test



#Run the script:
# robot -d results tests/demo.robot
# robot -d robot-example/results -v BROWSER:edge  robot-example/tests/RobotWeb.robot # for other broesers


*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://automationplayground.com/front-office/

*** Test Cases ***

Should be able to access "Team" page
    [Documentation]      This is some basic info about the test
    [Tags]               101    Smoke    Teampage
    #HOMEPAGE
    RobotWebApp.Go to "Home Page"
    RobotWebApp.Verify Homepage

    #TEAMPAGE OPEN
    RobotWebApp.Teampage open

"Team" page should match (correct header text)
    [Documentation]      This is some basic info about the test
    [Tags]               102    Smoke    Teampage Verify
    
    #HOMEPAGE
    RobotWebApp.Go to "Home Page"
    RobotWebApp.Verify Homepage

    #TEAMPAGE OPEN
    RobotWebApp.Teampage open
    RobotWebApp.Teampage Verifying
    
    #LOGIN


    #ADD COSTUMER


    #LOGOUT