*** Settings ***

Resource    ../Locators/HomePageTestLocators.robot
Resource    ../Locators/LoginTestLocators.robot
Resource    ../PageObjects/CommonPageObjects.robot
*** Variables ***

*** Keywords ***
Click on Log Out
    Click Log Out Element    ${logout}
    Wait Until Element Is Visible    ${navigation_Login_Link}
    Element Text Should Be     ${navigation_Login_Link}    Log in

