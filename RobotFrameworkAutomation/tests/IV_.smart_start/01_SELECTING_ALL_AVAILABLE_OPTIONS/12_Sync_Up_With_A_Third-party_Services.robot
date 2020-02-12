*** Settings ***
Documentation     Sync up with a third-party services.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource        ../../../pages/smart_start.robot

Suite Setup         Common User Login        Sync up with a third-party services.
Suite Teardown      Close Browser

Test Setup          Generic Selenium Test Setup
Test Teardown       Generic Selenium Test Teardown

*** Variables ***
# Setup vars
${UBER_FAIL}        'false'

*** Test Cases ***
Launch Calendar Sync (Smart Start)
    Launch Calendar Sync (Smart Start)

Click Add Calendar (Smart Start)
    Click Add Calendar (Smart Start)

Populate Email Address to Link and Save it (Smart Start)
    Populate Email Address to Link and Save it (Smart Start)

# Click Link Icon (Smart Start)
#     Click Link Icon (Smart Start)

# Select your preferred site to securely access your calendar (Smart Start)
#     Select your preferred site to securely access your calendar (Smart Start)

# Check and Agree the Terms of Service and Privacy Policy (Smart Start)
#     Check and Agree the Terms of Service and Privacy Policy (Smart Start)

# Click Link Google Account (Smart Start)
#     Click Link Google Account (Smart Start)

# Click Allow button (Smart Start)
#     Click Allow button (Smart Start)

# Choose what to import in GigaBook Calendar Sync (Smart Start)
#     Choose what to import in GigaBook Calendar Sync (Smart Start)

# Click Close (Smart Start)
#     Click Close (Smart Start)

Click Finish (Smart Start)
    Click Finish (Smart Start)

Is test Pass?
    Add Cookie      zaleniumTestPassed      true
