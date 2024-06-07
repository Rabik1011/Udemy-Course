*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary

*** Test Cases ***
Validate Unsuccessful Login
    Open the Browser with the Mortgage payment url


*** Keywords ***
Open the Browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To   https://rahulshettyacademy.com/loginpagePractise/
    Sleep   5s


