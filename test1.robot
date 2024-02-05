*** Settings ***
Documentation    Zalando login
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.zalando.se/

*** Test Cases ***
Test login
    Opening Zalando Webpage

*** Keywords ***
Opening Zalando webpage
    [Documentation]    Zalando webpage
    [Tags]    Opening Zalando Webpage
    Open Browser    browser=chrome
    Go To    ${url}
    Set Selenium Speed    1
    Wait Until Page Contains Element    //h3[normalize-space()='Populära märken för kläder, skor & accessoarer']
    
    
