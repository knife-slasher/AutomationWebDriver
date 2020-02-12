*** Settings ***
Documentation     Login: Test that correct error message displays for Sign up Now.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    Test that correct error message displays for Sign up Now.
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify_that_Correct_Error_Message_Display_for_Business/Organization_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter the name for your business or organization'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_First_Name_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your first name'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_Last_Name_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your last name'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_Email_Address_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your email address'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_Phone_Number_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your phone number'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_Password_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    re Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your password'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_re-Password_Field_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    Set 'Terms and Conditions' button to ON (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter your password again'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_Set_Term_Condition_Field_To_No
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Enter Business / Organization Name (Signup)
    Enter First Name (Signup)
    Enter Last Name (Signup)
    Enter Email Address (Signup)
    Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    Enter Password (Signup)
    re Enter Password (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please read and agree to our terms'
    Is test Pass?

Verify_that_Correct_Error_Message_Display_for_All_Fields_Leave_Blank
    Click 'Login' hyperlink (Login)
    Click on 'Sign Up Now' button (Signup)
    Clear Fields (Signup)
    Click on 'Create Account' button to Fail (Signup)
    Verify that correct error message is displayed 'Please enter the name for your business or organization'
    Verify that correct error message is displayed 'Please enter your first name'
    Verify that correct error message is displayed 'Please enter your last name'
    Verify that correct error message is displayed 'Please enter your email address'
    Verify that correct error message is displayed 'Please enter your phone number'
    Verify that correct error message is displayed 'Please enter your password'
    Verify that correct error message is displayed 'Please enter your password again'
    Verify that correct error message is displayed 'Please read and agree to our terms'
    Is test Pass?
    # Enter Business / Organization Name (Signup)
    # Enter First Name (Signup)
    # Enter Last Name (Signup)
    # Enter Email Address (Signup)
    # Wait Until Keyword Succeeds    5x    800ms    Enter Phone (Signup)
    # Enter Password (Signup)
    # re Enter Password (Signup)
    # Set 'Terms and Conditions' button to ON (Signup)
    # Click on 'Create Account' button to Fail (Signup)

*** Keywords ***
Is test Pass?
    Add Cookie    zaleniumTestPassed    true
