*** Settings ***
Documentation  Initial Test
Resource  ../resources/ubuntu.robot
Resource  ../resources/common.robot
Variables  ../resources/prod-env.py
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test

*** Variables ***
${SEARCH_TERM} =  cloud

*** Test Cases ***
MyTest
    ubuntu.Enter Search Term  ${SEARCH_TERM}
    ubuntu.Submit Search
    ubuntu.Verify Search Results  ${SEARCH_TERM}