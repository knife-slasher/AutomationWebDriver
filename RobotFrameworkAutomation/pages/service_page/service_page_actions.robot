*** Settings ***
Documentation     A resource file with reusable action keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

*** Keywords ***
Check "New Service" button
    #*************** Test Case 1 ***************
    Wait Until Element Is Enabled    ${NEW_SERVICE_BUTTON}
    Comment    "New Service" button is displayed

Check "Search" text field
    Page Should Contain Element    ${SEARCH_INPUT_FIELD}    loglevel=DEBUG
    Comment    "Search" field is displayed

Check list icon
    Page Should Contain Element    ${LIST_ICON}    loglevel=DEBUG
    Comment    List icon is displayed

Check deleted services button
    Page Should Contain Element    ${DELETE_SERVICE_BUTTON}    loglevel=DEBUG
    Comment    Deleted services button is displayed

Check "Image" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_IMAGE}    loglevel=DEBUG
    Comment    "Image" column is    displayed in the header

Check "Name" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_FULLNAME}    loglevel=DEBUG
    Comment    "Name" column is displayed in the header

Check "Provider" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_PROVIDER}    loglevel=DEBUG
    Comment    "Provider" column is displayed in the header

Check "Description" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_DESC}    loglevel=DEBUG
    Comment    "Description" column is displayed in the header

Check "Price" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_PRICE}    loglevel=DEBUG
    Comment    "Price" column is displayed in the header

Check "Duration" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_DURATION}    loglevel=DEBUG
    Comment    "Duration" is in the header

Check "Prep Time" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_PREPT}    loglevel=DEBUG
    Comment    "Prep Time" column is displayed in the header

Check "Finish Time" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_FINISHT}    loglevel=DEBUG
    Comment    "Finish Time" column name is displayed in the header

Check "Hidden" column name in the header
    Page Should Contain Element    ${COLUMN_NAME_HIDDEN}    loglevel=DEBUG
    Comment    "Hidden" column name is displayed in the header

Check help information box presence
    Page Should Contain Element    ${INFO_BOX}    loglevel=DEBUG
    Comment    Help information box is displayed
    #*************** Test Case 1 ***************
    #*************** Test Case 2 ***************

Click "New Service" button
    Click Element    ${NEW_SERVICE_BUTTON}
    Wait Until Element Is Visible    ${ADD_SERVICE_MODAL}
    "Add Service" modal should be displayed
    #*************** Test Case 2 ***************
    #*************** Test Case 3 ***************

Check "Add Service" modal label
    Wait Until Element Is Visible    ${ADD_SERVICE_MODAL_LABEL}
    Wait Until Element Contains    ${ADD_SERVICE_MODAL_LABEL}    Add Service
    Comment    "Add Service" modal label is displayed at the top

Check "Service Name" text field
    Page Should Contain Element    ${ADD_SERVICE_MODAL_SERVICE_NAME_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_MODAL_SERVICE_NAME_FIELD}
    Comment    "Service Name" text field is displayed

Check "Price" text field
    Page Should Contain Element    ${ADD_SERVICE_MODAL_PRICE_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_MODAL_PRICE_FIELD}
    Comment    "Price" text field is displayed

Check "Prep Time", "Duration", and "Finish Time slider"
    Page Should Contain Element    ${ADD_SERVICE_MODAL_PREP_TIME_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_MODAL_PREP_TIME_FIELD}    loglevel=DEBUG
    Page Should Contain Element    ${ADD_SERVICE_MODAL_DURATION_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_MODAL_DURATION_FIELD}    loglevel=DEBUG
    Page Should Contain Element    ${ADD_SERVICE_MODAL_FIN_TIME_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_MODAL_FIN_TIME_FIELD}    loglevel=DEBUG
    Comment    "Prep Time", "Duration", and    Finish Time slider is displayed

Check "Providers"
    Page Should Contain Element    ${ADD_SERVICE_MODAL_PROVIDERS}    loglevel=DEBUG
    Comment    Provider is displayed

Check "Choose Image" button
    Page Should Contain Element    ${ADD_SERVICE_CHOOSE_IMAGE_BUTTON}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_CHOOSE_IMAGE_BUTTON}
    Comment    "Choose Image" button is displayed

Check "Short Description" text field
    Page Should Contain Element    ${ADD_SERVICE_SHORT_DESCRIPTION_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_SHORT_DESCRIPTION_FIELD}
    Comment    "Short Description" text field is displayed

Check "Long Description" text field
    Page Should Contain Element    ${ADD_SERVICE_LONG_HTML_DESCRIPTION_FIELD}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_LONG_HTML_DESCRIPTION_FIELD}
    Comment    "Long Description" text field is displayed

Check "Hidden" sliding button
    Page Should Contain Element    ${ADD_SERVICE_HIDDEN_SWITCH}    loglevel=DEBUG
    Element Should Be Visible    ${ADD_SERVICE_HIDDEN_SWITCH}
    Comment    "Hidden" sliding button is displayed
    #*************** Test Case 3 ***************
    #*************** Test Case 4 ***************

Enter Service Name
    ${RANDOM_DEPT_NAME}    Random Dept Name
    ${RANDOM_SKILL_NAME}    Random Skill Name
    Set Suite Variable    ${RANDOM_DEPT_NAME_1}    ${RANDOM_DEPT_NAME}
    Set Suite Variable    ${RANDOM_SKILL_NAME_1}    ${RANDOM_SKILL_NAME}
    Input Text    ${ADD_SERVICE_MODAL_SERVICE_NAME_FIELD}    ${RANDOM_SKILL_NAME} ${RANDOM_DEPT_NAME}
    # Select at least one Provider
    #    ${number}    Set Variable    ${0}
    #    ${ELEMENTS}    Get WebElements    ${ADD_SERVICE_SERVICE_PROVIDERS}
    #    :FOR    ${ELEMENT}    IN    @{ELEMENTS}
    #    ${number}    Set Variable    ${number + 1}
    #    Log    ${number}
    #    Log    ${ELEMENT}
    #    ${BOOLEAN}    Booleaner
    #    Comment    ${BOOLEAN}
    #    Run Keyword If    ${BOOLEAN} == 0    Click Element    ${ELEMENT}

Select more than one Provider
    ${COUNTER}    Set Variable    ${0}
    ${ELEMENTS}    Get WebElements    ${ADD_SERVICE_SERVICE_PROVIDERS}
    : FOR    ${ELEMENT}    IN    @{ELEMENTS}
    \    ${COUNTER}    Set Variable    ${COUNTER + 1}
    \    Log    ${COUNTER}
    \    Log    ${ELEMENT}
    \    Run Keyword If    ${COUNTER} > 1    Click Element    ${ELEMENT}

Click "Add" button
    Click Element    ${ADD_SERVICE_MODAL_ADD_BUTTON}
    sleep    10s
    "Add Service" modal will be closed and new service will be added without a price    ${RANDOM_SKILL_NAME_1} ${RANDOM_DEPT_NAME_1}
    #*************** Test Case 4 ***************
    #*************** Test Case 5 ***************

Enter Price
    Input Text    ${ADD_SERVICE_MODAL_PRICE_FIELD}    89.00
    #*************** Test Case 5 ***************
    #*************** Test Case 7 ***************

Enter infos in the short description text field
    Input Text    ${ADD_SERVICE_SHORT_DESCRIPTION_FIELD}    This is some short description.

Enter infos in the long description text field
    Comment    Need fixing...
    # Click Element At Coordinates    ${ADD_SERVICE_SHORT_DESCRIPTION_FIELD}    0    -15
    # Press Key    ${ADD_SERVICE_LONG_HTML_DESCRIPTION_FIELD}    This is some Long description text for testing.
    #*************** Test Case 7 ***************
    #*************** Test Case 8 ***************

Check the selected service image
    Choose File    ${ADD_SERVICE_CHOOSE_IMAGE_UPLOAD_BUTTON}    ${CURDIR}${/}speciments${/}image.jpg

Click "Crop" button
    Click Element    ${CROP_IMAGE_MODAL_CROP_BUTTON}
    sleep    5s
    #*************** Test Case 8 ***************
    #*************** Test Case 9 ***************

Click existing service
    Click Element    css:.bootstro-backdrop
    Click Element    ${FIRST_SERVICE}
    Sleep    5s

Click "Hidden" sliding button
    ${ret}=    Run Keyword And Return Status    Page Should Contain Element    //div[contains(@class, 'bootstrap-switch-off') and contains(@class ,'bootstrap-switch-id-HideServiceUPDATE')]
    log    ${ret}
    Run Keyword If    '${ret}' == 'True'    Check if service is now hidden
    Run Keyword If    '${ret}' == 'False'    Check if service is not hidden

Click Update button
    Click Element    ${ADD_SERVICE_MODAL_ADD_BUTTON}
    Sleep    5s
    #*************** Test Case 9 ***************
    #*************** Test Case 10 ***************

Click Prep Time time-picker field
    Input Text    ${ADD_SERVICE_MODAL_PREP_TIME_FIELD}    0:30

Click Duration time-picker field
    Input Text    ${ADD_SERVICE_MODAL_DURATION_FIELD}    2:00

Click Finish Time time-picker field
    Input Text    ${ADD_SERVICE_MODAL_FIN_TIME_FIELD}    0:15
    #*************** Test Case 10 ***************
    #*************** Test Case 11 ***************

Edit Price
    Sleep    3s
    Input Text    ${EDIT_SERVICE_MODAL_PRICE}    89.00

Open created service
    Click the service    ${RANDOM_SKILL_NAME_1} ${RANDOM_DEPT_NAME_1}

Delete the service for teardown
    Click the service    ${RANDOM_SKILL_NAME_1} ${RANDOM_DEPT_NAME_1}
    Wait Until Element Is Visible    ${EDIT_SERVICE_NAME}    timeout=${WAIT_TIMEOUT}
    Click Element    ${EDIT_DELETE_SERVICE_BUTTON}
    Wait Until Element Is Visible    ${EDIT_DELETE_CONFIRM_BUTTON}    timeout=${WAIT_TIMEOUT}
    Click Element    ${EDIT_DELETE_CONFIRM_BUTTON}
    sleep    5s
    Check Service if exists    ${RANDOM_SKILL_NAME_1} ${RANDOM_DEPT_NAME_1}
    #*************** Test Case 11 ***************
    #*************** Setups ***************
    #*************** Setups ***************
    #*************** Teardowns ***************

Delete newly created service
    Navigate to https://gigabook.com/services
    Delete the service for teardown
    Close Browser
    #*************** Teardowns ***************

Select one provider
    Click Element    ${ADD_SERVICE_SERVICE_PROVIDERS}
