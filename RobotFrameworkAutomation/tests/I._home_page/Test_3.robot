*** Settings ***
Documentation     Test 3: 
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/home_page.robot

*** Test Cases ***
Correct error message displays if invalid password.
    # Actions
    Navigate to https://gigabook.com.
    Click 'Login' hyperlink.
    Enter valid email address.
    Enter invalid password.
    Click on Login button.

    # Verify
    Must Be on OOPS error page

    # Teardown
    Close Browser