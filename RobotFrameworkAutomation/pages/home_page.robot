*** Settings ***
Documentation     A resource file with reusable keywords and variables for home page.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot

*** Variables ***
# Login link to pop-out button
${LOG_IN_LINK}    xpath=//*[@id="main-nav"]/li[6]/a
# Button link from login modal
${LOG_IN_BUTTON}    name=login
# User Name input field from login modal
${LOG_IN_EMAIL_FIELD}    xpath=//*[@id="ModalLogin"]/div/div/form/div[2]/input[1]
# Password input field from login modal
${LOG_IN_PASS_FIELD}    xpath=//*[@id="ModalLogin"]/div/div/form/div[2]/input[2]
# OOPS! element holder on login error
${OOPS_ELEMENT}    xpath=//*[@id="loginfrm"]/div/div[1]/div[2]/div/div/div/div/div/h1

*** Keywords ***
Enter valid email address
    Input Text    ${LOG_IN_EMAIL_FIELD}    ${VALID_USER}
    Comment    System accepts valid email address.

Enter invalid email address
    ${RANDOM_1}    Random Number
    Input Text    ${LOG_IN_EMAIL_FIELD}    invalid_email${RANDOM_1}@koi.com
    Comment    System accepts valid email address.

Enter valid password
    Input Text    ${LOG_IN_PASS_FIELD}    ${VALID_PASS}
    Comment    System accepts valid password.

Enter invalid password
    Input Text    ${LOG_IN_PASS_FIELD}    invalid_password
    Comment    System will not accepts invalid email address.

Click on Login button
    Click Element    ${LOG_IN_BUTTON}
    Comment    Verify that correct error message is displayed for invalid email address.

Dashboard Page Should Be Open
    Location Should Be    ${DASHBOARD_URL}
    ${CURR_LOC}=    Log Location
    ${RESULT}=    Compare Url    ${CURR_LOC}    ${DASHBOARD_URL}
    Run Keyword If    ${RESULT}    Comment    Now on dashboard page
    ...    ELSE    Comment    Not on dashboard page

Must Be on OOPS error page
    Element Text Should Be    ${OOPS_ELEMENT}    Oops!
