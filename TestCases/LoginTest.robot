*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/LoginPageObjects.robot
Resource    ../PageObjects/HomePageObjects.robot
Resource    ../Application Configs/Application Variables.robot
Resource    ../PageObjects/CommonPageObjects.robot
Test Teardown  Close Browser

*** Test Cases ***
Verify That A Registered User Can Login To The Application Using The Correct Password
    Open Browser and Launch Application
    Submit Login Information    ${validUserName}  ${validPassword}
    Username Should Be Visible On The Navigation Bar    ${validUserName}
    

Verify That A Registered User Can Not Login To The Application Using The Correct User Name but Wrong Password
    Open Browser and Launch Application
    Submit Login Information    ${validUserName}  ${invalidPassword}
    User Should See An Alert With The Error Message    ${invalidPassword_errorMessage}

Verify That A Registered User Can Not Login To The Application Using The Wrong User Name but Correct Password
    Open Browser and Launch Application
    Submit Login Information    ${invalidUserName}  ${validPassword}
    User Should See An Alert With The Error Message    ${invalidUserName_errorMessage}




*** Keywords ***


    
