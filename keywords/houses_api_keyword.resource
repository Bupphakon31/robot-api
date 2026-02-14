*** Settings ***
Library    RequestsLibrary
Library    Collections
Variables    ../resources/expectedResults/house_data.json

*** Variables ***
${base_url}   https://potterapi-fedeperin.vercel.app/en
${params}     index=

*** Keywords ***

Get Houses API With Index parameter
    [Arguments]    ${index_number}
    ${response}=    GET On Session    house_data    /houses    params=${params}${index_number}    expected_status=any
    RETURN    ${response}

Verify Houses API Response Status
    [Arguments]    ${response}    ${status_code}
    Should Be Equal As Numbers    ${response.status_code}    ${status_code}

Verify Houses API Response Data
    [Arguments]    ${response}    ${expected_data}
    Should Be Equal    ${expected_data}    ${response}