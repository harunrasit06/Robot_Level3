*** Settings ***
Library            SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    [Arguments]    ${URL}    ${BROWSER}
    # initialize Selenium
    #set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                  Starting the test case!
    open browser         about:blank      ${BROWSER}

    #resize browser window for recording
    set window position          x=241    y=299
    set window size              width=1535   height=900



End Web Test
    Close All Browsers
    