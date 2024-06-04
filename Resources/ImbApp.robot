*** Settings ***
Library     SeleniumLibrary
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Register.robot

*** Variables ***

*** Keywords ***
Navigate to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded

Create New Account
    [Arguments]    ${UserData}
    #TopNav.Click Registration Link
    Register.Verify Page Loaded
    Register.Fill Page and Submit    ${UserData}

Create New Account with fail Data
    [Arguments]    ${UserData}
    #TopNav.Click Registration Link
    Register.Verify Page Loaded
    Register.Fill Page and Submit    ${UserData}

    

