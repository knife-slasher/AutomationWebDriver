*** Settings ***
Documentation     A resource file with reusable keywords and variables for signup page.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot

*** Variables ***
${SIGNUP_BUSS_ORG_FIELD}                xpath=//*[@id="BusinessNameID"]
${SIGNUP_FIRST_NAME_FIELD}              xpath=//*[@id="FirstNameID"]
${SIGNUP_LAST_NAME_FIELD}               xpath=//*[@id="LastNameID"]
${SIGNUP_EMAIL_FIELD}                   xpath=//*[@id="EmailAddID"]
${SIGNUP_PHONE_FIELD}                   xpath=//*[@id="ContactNoID"]
${SIGNUP_PASSWORD_FIELD}                xpath=//*[@id="PasswordID"]
${SIGNUP_CONFIRM_PASSWORD_FIELD}        xpath=//*[@id="PasswordConfirmID"]
${SIGNUP_SUBMIT_BUTTON}                 xpath=//*[@id="form_step_begin"]/div/div[5]/div/button[2]
${SIGNUP_CLEAR_FORM_BUTTON}             xpath=//*[@id="form_step_begin"]/div/div[5]/div/button[1]
${I_AGREE_SWITCH}                       xpath=//*[@id="form_step_begin"]/div/div[4]/div/div/div/label

${WELCOME_HEADER_CONTAINER}             xpath=//*[@id="welcome-header-container"]
${WELCOME_CONTENT_CONTAINER}            xpath=//*[@id="welcome-content-container"]


# Error messages
${SIGNUP_BUSS_ORG_FIELD_ERROR}              xpath=//*[@id="BusinessNameID-error"]
${SIGNUP_FIRST_NAME_FIELD_ERROR}            xpath=//*[@id="FirstNameID-error"]
${SIGNUP_LAST_NAME_FIELD_ERROR}             xpath=//*[@id="LastNameID-error"]
${SIGNUP_EMAIL_FIELD_ERROR}                 xpath=//*[@id="EmailAddID-error"]
${SIGNUP_PHONE_FIELD_ERROR}                 xpath=//*[@id="ContactNoID-error"]
${SIGNUP_PASSWORD_FIELD_ERROR}              xpath=//*[@id="PasswordID-error"]
${SIGNUP_CONFIRM_PASSWORD_FIELD_ERROR}      xpath=//*[@id="PasswordConfirmID-error"]
${I_AGREE_SWITCH_ERROR}                     xpath=//*[@id="Terms-error"]

*** Keywords ***
Enter Business / Organization Name
    ${RANDOM_COMPANY}           Random Company Name
    Input Text      ${SIGNUP_BUSS_ORG_FIELD}        ${RANDOM_COMPANY}
    Comment         System accepts Business / Organization Name


Enter First Name
    ${RANDOM_FIRST_NAME}        Random First Name
    Input Text      ${SIGNUP_FIRST_NAME_FIELD}      ${RANDOM_FIRST_NAME}
    Comment         System accepts First Name


Enter Last Name
    ${RANDOM_LAST_NAME}         Random Last Name
    Input Text      ${SIGNUP_LAST_NAME_FIELD}       ${RANDOM_LAST_NAME}
    Comment         System accepts Last Name


Enter Email Address
    ${RANDOM_FIRST_NAME}        Get Element Attribute     ${SIGNUP_FIRST_NAME_FIELD}      value
    ${RANDOM_LAST_NAME}         Get Element Attribute     ${SIGNUP_LAST_NAME_FIELD}       value
    Input Text      ${SIGNUP_EMAIL_FIELD}       ${RANDOM_FIRST_NAME}${RANDOM_LAST_NAME}@somegmail.com
    Comment        System accepts Email Address


Enter Phone
    Input Text      ${SIGNUP_PHONE_FIELD}       123456789456
    Comment         System accepts Phone Number


Enter Password
    Input Text      ${SIGNUP_PASSWORD_FIELD}            pass
    Comment         System accepts Password


re Enter Password
    Input Text      ${SIGNUP_CONFIRM_PASSWORD_FIELD}    pass
    Comment         System accepts re Enter Password


Set 'Terms and Conditions' button to ON
    Click Element   ${I_AGREE_SWITCH}
    Comment         Terms and Conditions button set to ON.


Click on 'Create Account' button
    Click Element   ${SIGNUP_SUBMIT_BUTTON}
    Comment         Verifiy that new account created.


Verify that Welcome Page displayed
    Wait Until Element Is Visible       ${WELCOME_HEADER_CONTAINER}
    Wait Until Element Is Visible       ${WELCOME_CONTENT_CONTAINER}
    Title Should Be         ${WELCOME_GGB_TEXT}
    Location Should Be      ${WELCOME_URL}


Leave the Business / Organization Name: field blank
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_BUSS_ORG_FIELD_ERROR}      Please enter the name for your business or organization


Leave the First Name: field blank
    Enter Business / Organization Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_FIRST_NAME_FIELD_ERROR}        Please enter your first name


Leave the Last Name: field blank
    Enter Business / Organization Name.
    Enter First Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_LAST_NAME_FIELD_ERROR}        Please enter your last name


Leave the Email: field blank
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_EMAIL_FIELD_ERROR}        Please enter your email address


Leave the Phone: field blank
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_PHONE_FIELD_ERROR}        Please enter your phone number


Leave the Password: field blank
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_PASSWORD_FIELD_ERROR}        Please enter your password


Leave the Password(again): field blank
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    Set 'Terms and Conditions' button to ON.
    Click on 'Create Account' button.
    Element Text Should Be      ${SIGNUP_CONFIRM_PASSWORD_FIELD_ERROR}        Please enter your password again


Enter Business / Organization Name:, First Name, Last Name, Email, Phone, Password and Password(again)
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Click on 'Create Account' button.
    Element Text Should Be      ${I_AGREE_SWITCH_ERROR}        Please read and agree to our terms


Enter a Business / Organization Name:, First Name:, Last Name:, Email:, Phone:, Password: and Password(again)
    Enter Business / Organization Name.
    Enter First Name.
    Enter Last Name.
    Enter Email Address.
    Enter Phone.
    Enter Password.
    re Enter Password.
    Set 'Terms and Conditions' button to ON.


Cick Clear Form Button
    Click Element           ${SIGNUP_CLEAR_FORM_BUTTON}


# Clear Signup Page Form
Clear Signup Page Form
    Clear Element Text      ${SIGNUP_BUSS_ORG_FIELD}
    Clear Element Text      ${SIGNUP_FIRST_NAME_FIELD}
    Clear Element Text      ${SIGNUP_LAST_NAME_FIELD}
    Clear Element Text      ${SIGNUP_EMAIL_FIELD}
    Input Text              ${SIGNUP_PHONE_FIELD}       0
    Clear Element Text      ${SIGNUP_PASSWORD_FIELD}
    Clear Element Text      ${SIGNUP_CONFIRM_PASSWORD_FIELD}
    Set 'Terms and Conditions' button to ON.


