*** Settings ***
Documentation     Test 1:
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../pages/home_page.robot

*** Test Cases ***
User able to login successfully
    # Actions
    Common User Login           Home Page Test_1

    # Verify
    Dashboard Page Should Be Open

    # Teardown
    Close Browser