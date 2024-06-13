*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary
Test Setup        Open the Browser with the Mortgage payment url
Test Teardown    Close browser Session
Resource    resource.robot



*** Variables ***
${Error_Message_Login}       css:.alert-danger
${Shop_page_load}    css:.nav-link


*** Test Cases ***
Validate Unsuccessful Login
    Fill The Login Form    ${user_name}    ${invalid_password}
    wait Until Element Is Located in the page        ${Error_Message_Login}
    verify error message is correct
    
Validate Cards display in the Shopping Page
    Fill The Login Form    ${user_name}    ${valid_password}
    wait Until Element Is Located in the page        ${Shop_page_load}
    

*** Keywords ***

Fill the Login Form
    [Arguments]    ${username}    ${password}
    Input Text        id:username    ${username}
    Input Password    id:password    ${password}
    Click Button        signInBtn


//ASSERTION
verify error message is correct
    ${result}=     Get Text    ${Error_Message_Login}
    Should Be Equal As Strings    ${result}    Incorrect username/password.

wait Until Element Is Located in the page
    [Arguments]    ${element}
   Wait Until Element Is Visible       ${element}
