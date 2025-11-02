*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/LoginPageObjects.robot
Resource    ../PageObjects/HomePageObjects.robot
Resource    ../Application Configs/Application Variables.robot
Resource    ../PageObjects/CommonPageObjects.robot
Test Teardown  Close Browser

*** Test Cases ***
Verify that A Logged in User Can Log Out Successfully
    Open Browser and Launch Application
    Submit Login Information    ${validUserName}    ${validPassword} 
    Click on Log Out