*** Settings ***
Documentation     Test 2:
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource       ../../pages/home_page.robot

*** Test Cases ***
Correct error message displays if invalid email address.
    # Actions
    Navigate to https://gigabook.com.
    Click 'Login' hyperlink.
    Enter invalid email address.
    Enter valid password.
    Click on Login button.

    # Verify
    Must Be on OOPS error page

    # Teardown
    Close Browser