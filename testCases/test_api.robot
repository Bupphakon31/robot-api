*** Settings ***
Resource    ../configs/import.resource
Suite Setup    Create Session    house_data    ${base_url}
Suite Teardown    Delete All Sessions

*** Variables ***
${base_url}    https://potterapi-fedeperin.vercel.app/en

*** Test Cases ***
Get 'slytherin' house data successfully
    ${response}=    Get Houses API With Index parameter    3
    Verify Houses API Response Status    ${response}    200
    Verify Houses API Response Data   ${response.json()}     ${house_data}

Get house data but not found
    ${response}=    Get Houses API With Index parameter    5
    Verify Houses API Response Status    ${response}    404
    Verify Houses API Response Data   ${response.json()}     ${not_found_house_data}