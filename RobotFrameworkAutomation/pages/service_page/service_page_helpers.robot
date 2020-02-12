*** Settings ***
Documentation     A resource file with helpers keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

*** Keywords ***
Is service exists on service page
    [Arguments]    ${SERVICE_NAME}
    Sleep    5s
    ${PART1}    Catenate    SEPARATOR=    jquery:a.open-serviceEdit:contains('    ${SERVICE_NAME}
    ${RESULT}    Catenate    SEPARATOR=    ${PART1}    ')
    Wait Until Element Is Visible    ${RESULT}    10s
    Element Should Be Visible    ${RESULT}

Click the service
    [Arguments]    ${SERVICE_NAME}
    ${PART1}    Catenate    SEPARATOR=    jquery:a.open-serviceEdit:contains('    ${SERVICE_NAME}
    ${RESULT}    Catenate    SEPARATOR=    ${PART1}    ')
    ${ADDED_DATA_ID}    Get Element Attribute    ${RESULT}    data-id
    Set Suite Variable    ${EDIT_DATA_ID}    jquery:[data-id='${ADDED_DATA_ID}']:eq(4)
    Click Element    ${RESULT}

Check Service if exists
    [Arguments]    ${SERVICE_NAME}
    Comment    Element Should Not Be Visible    jquery:a.open-serviceEdit:contains('${SERVICE_NAME}')
    ${loc}=    Page Should Not Contain Element    jquery:a.open-serviceEdit:contains('${SERVICE_NAME}')
    Should Not Be True    ${loc}
