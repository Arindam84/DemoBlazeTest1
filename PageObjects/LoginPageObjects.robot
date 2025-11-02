*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/LoginTestLocators.robot
Resource    ../PageObjects/CommonPageObjects.robot


*** Keywords ***
Submit Login Information
    [Arguments]  ${userName}  ${password}  
    Click PageElement    ${navigation_Login_Link}    
    Set Text    ${usernameTextBox}    ${userName}   
    Set Text    ${passwordTextBox}    ${password}  
    Click PageElement    ${loginButton}
    
Username Should Be Visible On The Navigation Bar
    [Arguments]    ${username}
    Wait Until Element Is Visible    xpath://*[@id="nameofuser"]
    Element Text Should Be   xpath://*[@id="nameofuser"]    Welcome ${username}
User Should See An Alert With The Error Message
    [Arguments]    ${errorMessage}
    Alert Should Be Present    ${errorMessage}

    
    