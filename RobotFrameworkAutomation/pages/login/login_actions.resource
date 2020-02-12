*** Settings ***
Documentation     A resource file with reusable action keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

*** Keywords ***
Click 'Login' hyperlink (Login)
    #*************** Login: User able to login successfully ***************
    Click Element    ${ROOT_LOGIN_LINK}
    Wait Until Element Is Visible    ${ROOT_LOGIN_MODAL}

Enter valid email address
    Input Text    ${ROOT_EMAIL_FIELD}    ${VALID_USER}
    Textfield Should Contain    ${ROOT_EMAIL_FIELD}    ${VALID_USER}

Enter valid password
    Input Text    ${ROOT_PASSW_FIELD}    ${VALID_PASS}
    Textfield Should Contain    ${ROOT_PASSW_FIELD}    ${VALID_PASS}

Click on Login button
    Click Element    ${ROOT_LOGIN_BUTTON}
    Wait Until Element Is Visible    ${DASHBOARD_LOGO_IMG}
    Location Should Be    ${DASHBOARD_URL}
    #*************** Login: User able to login successfully ***************
    #*************** Login: Correct error message displays if invalid email address ***************

Enter invalid email address
    Input Text    ${ROOT_EMAIL_FIELD}    invalid@email.com
    Textfield Should Contain    ${ROOT_EMAIL_FIELD}    invalid@email.com

Click on Login button (Invalid Username)
    Click Element    ${ROOT_LOGIN_BUTTON}
    Wait Until Page Contains    Email Not Found!
    #*************** Login: Correct error message displays if invalid email address ***************
    #*************** Login: Correct error message displays if invalid password. ***************

Enter invalid password
    Input Text    ${ROOT_PASSW_FIELD}    invalidpassword
    Textfield Should Contain    ${ROOT_PASSW_FIELD}    invalidpassword

Click on Login button (Invalid Password)
    Click Element    ${ROOT_LOGIN_BUTTON}
    Wait Until Page Contains    You have
    Wait Until Page Contains    attempts left!
    #*************** Login: Correct error message displays if invalid password. ***************
    #*************** Login: Verify that Sign Up works correctly. ***************

Click on 'Sign Up Now' button (Signup)
    Click Element    ${ROOT_SIGN_UP_NOW_BUTTON}
    Wait Until Element Is Visible    ${SIGNUP_MAIN_FORM}
    log    ${SIGNUP_URL}
    Location Should Be    ${SIGNUP_URL}

Enter Business / Organization Name (Signup)
    ${RANDOM_NUMBER}    Random Number
    Input Text    ${SIGNUP_MAIN_FORM_BUSS_NAME}    Auto Test ${RANDOM_NUMBER}
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_BUSS_NAME}    Auto Test ${RANDOM_NUMBER}

Enter First Name (Signup)
    ${RANDOM_FIRST_NAME}    Random First Name
    Input Text    ${SIGNUP_MAIN_FORM_F_NAME}    ${RANDOM_FIRST_NAME}
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_F_NAME}    ${RANDOM_FIRST_NAME}

Enter Last Name (Signup)
    ${RANDOM_LAST_NAME}    Random Last Name
    Input Text    ${SIGNUP_MAIN_FORM_L_NAME}    ${RANDOM_LAST_NAME}
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_L_NAME}    ${RANDOM_LAST_NAME}

Enter Email Address (Signup)
    ${RANDOM_NUMBER}    Random Number
    Input Text    ${SIGNUP_MAIN_FORM_EMAIL}    AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com
    Set Global Variable    ${GLOBAL_TEST_EMAIL_USE}    1
    Set Global Variable    ${GLOBAL_TEST_EMAIL}    AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_EMAIL}    AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com

Enter Phone (Signup)
    Click Element    ${SIGNUP_MAIN_FORM_CONTACT}
    Press Key    ${SIGNUP_MAIN_FORM_CONTACT}    639123456789
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_CONTACT}    +63(912)345-6789

Enter Password (Signup)
    Input Text    ${SIGNUP_MAIN_FORM_PASS1}    somevalispasshere
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_PASS1}    somevalispasshere

re Enter Password (Signup)
    Input Text    ${SIGNUP_MAIN_FORM_PASS2}    somevalispasshere
    Textfield Should Contain    ${SIGNUP_MAIN_FORM_PASS2}    somevalispasshere

Set 'Terms and Conditions' button to ON (Signup)
    Click Element    ${SIGNUP_MAIN_FORM_AGREE_SWTICH}
    Wait until page contains element    ${SIGNUP_MAIN_FORM} .bootstrap-switch-on

Click on 'Create Account' button (Signup)
    Click Element    ${SIGNUP_MAIN_FORM_CREATE_ACCOUNT_BUTTON}
    Wait Until Keyword Succeeds    5x    800ms    Wait Until Page Contains    Let Us Walk You Through
    Wait Until Page Contains Element    ${QUICK_TOUR_BUTTON}
    Wait Until Page Contains Element    ${GIGA_TIPS_BUTTON}
    Location Should Be    ${WELCOME_URL}
    #*************** Login: Verify that Sign Up works correctly. ***************
    #*************** Login: Test that correct error message displays for Sign up Now. ***************

Clear Fields (Signup)
    Reload Page
    # Clear Element Text    ${SIGNUP_MAIN_FORM_AGREE_SWTICH}

Click on 'Create Account' button to Fail (Signup)
    Click Element    ${SIGNUP_MAIN_FORM_CREATE_ACCOUNT_BUTTON}
    #*************** Login: Test that correct error message displays for Sign up Now. ***************
    #*************** Login: Verify that Clear Form button works correctly. ***************

Click on 'Clear Form' button
    Click Element    ${SIGNUP_MAIN_FORM_RESET_BUTTON}
    Handle Alert
    Sleep    10s
    #*************** Login: Verify that Clear Form button works correctly. ***************
    #*************** Login: Verify that correct page display for Terms and Conditions. ***************

On Sign Up Form, Click on Terms and Conditions
    Click Element    ${SIGNUP_MAIN_FORM_TOC_LINK}
    Wait Until Element Is Visible    ${SIGNUP_MAIN_FORM_TOC_MODAL}
    #*************** Login: Verify that correct page display for Terms and Conditions. ***************

User must be successfully logged in
    Click 'Login' hyperlink (Login)
    Enter valid email address
    Enter valid password
    Click on Login button
