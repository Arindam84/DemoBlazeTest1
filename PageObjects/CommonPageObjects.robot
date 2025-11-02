*** Settings ***
Library    SeleniumLibrary
Resource    ../Application Configs/Application Variables.robot
*** Variables ***
*** Keywords ***
Open Browser and Launch Application
    Open Browser    https://demoblaze.com/     chrome             
    Maximize Browser Window
Click Log Out Element    [Arguments]    ${elementLocator}
    Log    Hello
    Wait Until Keyword Succeeds  5  2 seconds  Wait Until Element Is Visible  ${elementLocator}
    Wait Until Keyword Succeeds    5    2    Click Element    ${elementLocator}

Click PageElement    [Arguments]    ${elementLocator}
    Wait Until Keyword Succeeds  5  2 seconds  Wait Until Element Is Visible  ${elementLocator}
    Wait Until Keyword Succeeds    5    2 seconds    Click Element    ${elementLocator}

Set Text    [Arguments]    ${textBoxlocator}    ${TextBoxvalue}
    Wait Until Element Is Visible    ${textBoxlocator}
    Input Text       ${textBoxlocator}    ${TextBoxvalue} 