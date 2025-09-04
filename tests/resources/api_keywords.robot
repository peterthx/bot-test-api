*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Create API Session
    Create Session    api    ${BASE_URL}    headers={"Content-Type": "${CONTENT_TYPE}"}

Get Health Check
    [Arguments]    ${endpoint}
    ${response}=   GET On Session    api    ${endpoint}
    Should Be Equal As Integers   ${response.status_code}    200
    RETURN    ${response}

GET EMPLOYEE
    [Arguments]     ${endpoint}
    ${response}=    GET On Session    api    ${endpoint}
    Should Be Equal As Integers   ${response.status_code}    200
    RETURN    ${response}
