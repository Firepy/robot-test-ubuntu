*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${UBUNTU_URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains  Latest news from our blog

End Web Test
    Close Browser


    