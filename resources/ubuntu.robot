*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Enter Search Term
    [Arguments]  ${search_term}
    Input Text  xpath=//form[@id="google-appliance-search-form"]/input[@type="search"]  ${search_term}

Submit Search
    Click Button  xpath=//form[@id="google-appliance-search-form"]/button[@type="submit"]

Verify Search Results
    [Arguments]  ${search_term}
    Wait Until Page Contains  ${search_term}
