*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${Error_Message_Login}       css:.alert-danger

*** Test Cases ***
Validate Unsuccessful Login
    Open the Browser with the Mortgage payment url
    Fill The Login Form
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***
Open the Browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To   https://rahulshettyacademy.com/loginpagePractise/
    Maximize Browser Window

Fill the Login Form
    Input Text        id:username    rahulshettyacademy
    Input Password    id:password    12345678
    Click Button        signInBtn

wait until it checks and display error message
    Wait Until Element Is Visible    ${Error_Message_Login}

//ASSERTION
verify error message is correct
    ${result}=     Get Text    ${Error_Message_Login}
    Should Be Equal As Strings    ${result}    Incorrect username/password.


