*** Settings ***
Documentation   Login Test Case 1 - User able to login successfully. Step-wise
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/Kris_login/kris_login.resource
Resource        ../../pages/Kris_login/kris_login_expectations.resource

Test Timeout    10 minutes

Suite Setup         Common Browser Navigation        User able to login successfully
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
User able to login successfully
    Click 'Login' hyperlink.
    Enter valid email address.
    Enter valid password.
    Click on Login button.
    Kris expects Redirect to Dashboard

# Navigate to https://gigabook.com.
#     Kris expects must be home
#     Kris expects login modal hidden

# Click 'Login' hyperlink. 
#     Click 'Login' hyperlink.
#     Kris expects login modal visible

# Enter valid email address.
#     Click 'Login' hyperlink.
#     Enter valid email address.
#     Kris expects email is entered

# Enter valid password
#     Click 'Login' hyperlink.
#     Enter valid password.
#     Kris expects password is entered

  
# Note on valid email - if registered
# 1 - if no password, redirects to '/access' endpoint but no prompt that email is not found
# 2 - if invalid password, redirects to '/access' endpoint with prompt on number of attempts
# 3 - if with valid password, redirects to '/dashboard'