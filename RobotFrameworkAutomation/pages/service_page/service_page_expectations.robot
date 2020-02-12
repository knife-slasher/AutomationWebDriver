*** Settings ***
Documentation     A resource file with reusable expected results keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

*** Keywords ***
"Add Service" modal should be displayed
    #*************** Test Case 2 ***************
    Element Should Be Visible    ${ADD_SERVICE_MODAL}
    Comment    "Add Service" modal is displayed
    #*************** Test Case 2 ***************
    #*************** Test Case 4 ***************

"Add Service" modal will be closed and new service will be added without a price
    [Arguments]    ${SERVICE_NAME}
    Is service exists on service page    ${SERVICE_NAME}
    #*************** Test Case 4 ***************
    #*************** Test Case 8 ***************

Check if image is changed
    Element Should Not Be Visible    ${EDIT_IMAGE_PREVIEW}
    Comment    Image displayed in the image preview box
    #*************** Test Case 8 ***************
    #*************** Test Case 9 ***************

Check if service is now hidden
    Click Element    ${EDIT_SERVICE_MODAL_HIDDEN_SWITCH}
    Click Update button
    Element Should Contain    ${FIRST_SERVICE_H_STATUS}    Yes
    #*************** Test Case 9 ***************
    #*************** Test Case 11 ***************

Check if price is added
    Element Should Contain    ${EDIT_DATA_ID}    $ 89.00
    #*************** Test Case 11 ***************

Check if service is not hidden
    Click Element    ${EDIT_SERVICE_MODAL_HIDDEN_SWITCH}
    Click Update button
    Element Should Contain    ${FIRST_SERVICE_H_STATUS}    No
