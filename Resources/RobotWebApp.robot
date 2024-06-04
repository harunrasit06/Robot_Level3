*** Settings ***
Resource    PO/Homepage.robot
Resource    PO/TeamPage.robot

*** Variables ***


*** Keywords ***
Go to "Home Page"
    Open Homepage
Verify Homepage
    Verify Home Page Loaded
Teampage open
    Go to TeamPage
Teampage Verifying
    Verify TeamPage

