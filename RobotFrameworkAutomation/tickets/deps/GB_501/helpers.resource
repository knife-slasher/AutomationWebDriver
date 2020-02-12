*** Settings ***
Documentation     A resource file with helpers keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.


*** Keywords ***
Check If "Allow multiple appointments in a shopping cart?" is prematurely on
    [Arguments]     ${ELEMEMT}      ${LABEL}
    ${RESULT}=       Run Keyword And Return Status          Element Should Be Visible       ${ELEMEMT}
    Run Keyword If      '${RESULT}' == 'True'               Click Element           ${LABEL}