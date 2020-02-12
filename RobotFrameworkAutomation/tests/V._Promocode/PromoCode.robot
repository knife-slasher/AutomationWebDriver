*** Settings ***
Documentation     Login: User able to login successfully
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Common Browser Navigation    User able to login successfully
Suite Teardown    Close Browser
Test Setup        Generic Selenium Test Setup
Test Teardown     Generic Selenium Test Teardown
Test Timeout      10 minutes
Resource          ../../pages/login.resource

*** Variables ***
# Setup vars
${UBER_FAIL}      'false'

*** Test Cases ***
Verify that correct page displayed for Promo Code when the user have not entered promo codes yet
    # Prerequisite Action
    User must be successfully logged in
    #Step1
    Mouse Over    //a[@class='dbl-click' and @href='https://dev16.gigabook.com/widgets']
    sleep    3s
    Element Should Be Visible    css=.promo-codes
    # Step2
    Click Element    css=.promo-codes

Is test Pass?
    ${cook}=    Add Cookie    zaleniumTestPassed    true
    log    ${cook}
