*** Settings ***
Resource    ../resources/api_keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Health Check Endpoint Should Return 200
    Create API Session
    ${resp}=    Get Health Check    /health
    Log    ${resp.json()}

Search Employee All users
    Create API Session
    ${resp}=    GET EMPLOYEE    /api/employees
    log   ${resp.json()}
