*** Settings ***
Documentation    A resource file with reusable keywords and variables.
Library    SeleniumLibrary


*** Variables ***
${user_name}        rahulshettyacademy
${invalid_password}    12345
${url}    https://rahulshettyacademy.com/loginpagePractise/
${valid_password}    learning

*** Keywords ***
Open the Browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
    
Close browser Session
        Close Browser