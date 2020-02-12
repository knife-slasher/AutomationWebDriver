*** Settings ***
Documentation     A resource file with reusable keywords and variables for Calendar side menu page.
...
...               The system specific keyworrds created here from our own domain
...               specific language. They utilize keywords provided by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
#******** List of elements present on the Calendar side menu ***************
${DAILY}          xpath=//span[text()="Daily"]
${WEEKLY}         xpath=//span[text()="Weekly"]
${MONTHLY}        xpath=//span[text()="Monthly"]
${SEARCH}         xpath=//span[text()="Search"]
${BLOCK TIME}     xpath=//span[text()="Block Time"]
${SCHEDULE APPOINTMENT}    xpath=//span[text()="Schedule Appointment"]
${SCHEDULE EVENT}    xpath=//span[text()="Schedule Event"]
${SCHEDULE GROUP}    xpath=//span[text()="Schedule Group ..."]
${CHECK AVAILABILITY}    xpath=//span[text()="Check Availability"]

*** Keywords ***
Select Daily
    Click Element    ${DAILY}

Select Weekly
    Click Element    ${WEEKLY}

Select Monthly
    Click Element    ${MONTHLY}

Select Search
    Click Element    ${SEARCH}

Select Block Time
    Click Element    ${BLOCK TIME}

Select Schedule Appointment
    Click Element    ${SCHEDULE APPOINTMENT}

Select Schedule Event
    Click Element    ${SCHEDULE EVENT}

Select Schedule Group
    Click Element    ${SCHEDULE GROUP}

Select Check Availability
    Click Element    ${CHECK AVAILABILITY}
