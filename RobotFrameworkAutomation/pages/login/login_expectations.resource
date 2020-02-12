*** Settings ***
Documentation     A resource file with reusable expected results keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.


*** Keywords ***
Verify that correct error message is displayed 'Please enter the name for your business or organization'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_BUSS_NAME}-error

Verify that correct error message is displayed 'Please enter your first name'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_F_NAME}-error

Verify that correct error message is displayed 'Please enter your last name'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_L_NAME}-error

Verify that correct error message is displayed 'Please enter your email address'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_EMAIL}-error

Verify that correct error message is displayed 'Please enter your phone number'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_CONTACT}-error

Verify that correct error message is displayed 'Please enter your password'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_PASS1}-error

Verify that correct error message is displayed 'Please enter your password again'
    Wait Until Element Is Visible           ${SIGNUP_MAIN_FORM_PASS2}-error

Verify that correct error message is displayed 'Please read and agree to our terms'
    Wait Until Element Is Visible           jquery:#Terms-error

Verify that all data entered on the fields have been cleared
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_BUSS_NAME}
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_F_NAME}          
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_L_NAME}         
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_EMAIL}           
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_CONTACT}         
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_PASS1}           
    Should Be True              '${RESULT}' == ''
    ${RESULT}                   Get Value       ${SIGNUP_MAIN_FORM_PASS2} 