*** Settings ***
Documentation     A resource file with helpers keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.


*** Keywords ***
Time Pick
    [Arguments]     ${TIME}

    Wait Until Element Is Visible           jquery:#timepicker-modal-24

    Click Element                           ${SERVICES_TIME_PICK_MIN}

    Click Element                           ${SERVICES_TIME_SEL_MIN}:contains(${TIME}):visible

    Click Element                           jquery:#timepicker-modal-24 .timepicker-update-btn