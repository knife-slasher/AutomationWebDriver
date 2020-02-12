*** Settings ***
Documentation     A resource file with reusable action keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../../pages/smart_start.robot
Resource          ../../pages/login/login_actions.resource
Resource          ../../pages/login.resource

*** Variables ***
${MY_VALID_EMAIL}       AUTOTESTemail1102@fcqamail.com
${MY_VALID_PASSWORD}    thisissomepass1234
${LOCATION_STATE_ID}    id:business-information-state
${US_STATE}             Alaska
${MY_NEXT_STEP}         xpath://*[@id="business-locations"]/div/div[2]/div[1]/div/div[2]/a
${MINUTE_FIELD}         css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(2) > td:nth-child(3) > span:nth-child(1)  
${HR_FIELD}             css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(2) > td:nth-child(1) > span:nth-child(1)                        
${MIN_CHEV_UP}          css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(1) > td:nth-child(3) > a:nth-child(1) > span:nth-child(1)
${MIN_CHEV_DOWN}        css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(3) > td:nth-child(3) > a:nth-child(1) > span:nth-child(1)
${HR_CHEV_UP}           css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > a:nth-child(1) > span:nth-child(1)
${HR_CHEV_DOWN}         css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(2) > div:nth-child(1) > div:nth-child(1) > table:nth-child(1) > tr:nth-child(3) > td:nth-child(1) > a:nth-child(1) > span:nth-child(1)
${STRIPE_GB_URL}        https://connect.stripe.com/oauth/authorize?response_type=code&client_id=ca_6HSSOdxFszfkRk5Njw8BrErdtgunhbET&scope=read_write



*** Keywords ***
Input MY_VALID_EMAIL 
    Input Text                  EmailAdd    ${MY_VALID_EMAIL}
    Textfield Value Should Be   EmailAdd    ${MY_VALID_EMAIL}

Input MY_VALID_PASSWORD
    Input Password              Password    ${MY_VALID_PASSWORD} 
    Textfield Value Should Be   Password    ${MY_VALID_PASSWORD} 

Login using new account
    Click 'Login' hyperlink (Login)
    Input MY_VALID_EMAIL 
    Input MY_VALID_PASSWORD
    Click Element               login
    Confirm Dashboard Page      
    
Input US State to State Feild
    # Click Element               ${LOCATION_STATE_ID}
    Input Text                  ${LOCATION_STATE_ID}    ${US_STATE} 
    Textfield Value Should Be   ${LOCATION_STATE_ID}    ${US_STATE} 

# Select US State from Dropdown
#     Select From List By Label   ${LOCATION_STATE_ID}    ${US_STATE} 
#     List Selection Should Be    ${LOCATION_STATE_ID}    ${US_STATE} 

Delete Location (New Location)
    [Arguments]                 ${INDEX}
    Click Button                css:#business-location-heading-${INDEX} > h4 > button
    Element Should Be Visible   id:confirm-delete-modal

Click Delete (Service Bookings Locations)
    [Arguments]                 ${INDEX}
    Click Button                        css:#confirm-delete-modal > div > div > div.modal-footer > button.btn.btn-danger.btn-confirm-delete.btn-confirm-delete-business-locations
    
    Element Should Not Be Visible       id:confirm-delete-modal
    Page Should Not Contain Element     data-index:${INDEX}

Click Next Step (Employee Link)
    Scroll Element Into View                ${NEXT_STEP_BUTTON}
    Click Link                              ${NEXT_STEP_BUTTON}
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds
    Wait Until Page Contains Element        ${EMPLOYEES_ACCORDION}
    Wait Until Page Contains Element        ${EMPLOYEES_HEADING_0}

Populate and Confirm
    [Arguments]                     ${LOCATION}     ${INPUT_VALUE}
    Input Text                      ${LOCATION}     ${INPUT_VALUE}
    Textfield Should Contain        ${LOCATION}     ${INPUT_VALUE}

Click Yes/No Button
    [Arguments]         ${CSS_SELECTOR}     ${DATA_ACTIVE_VALUE}        ${DATA_INACTIVE_VALUE}       #data value of default
    Element Attribute Value Should Be   jquery:.${CSS_SELECTOR}[data-value="${DATA_ACTIVE_VALUE}"]    class   btn btn-primary ${CSS_SELECTOR} active
    Click Element          jquery:.${CSS_SELECTOR}[data-value="${DATA_INACTIVE_VALUE}"]
    Element Attribute Value Should Be   jquery:.${CSS_SELECTOR}[data-value="${DATA_ACTIVE_VALUE}"]    class   btn btn-primary ${CSS_SELECTOR} not-active
    # Click Element                       ${ACTIVE_BTN}
    # Element Should Be Enabled           ${ACTIVE_BTN}
    # Wait Until Element is Visible       ${ACTIVE_BTN}.active

Click Delete Button for New Item (Business Location, Staff)
    [Arguments]     ${CSS_SELECTOR}
    Click Element                     jquery:.${CSS_SELECTOR}[data-id="new"]
    Element Should Be Visible   id:confirm-delete-modal

Confirm Delete from Modal (Staff)
    [Arguments]     ${BUTTON_CSS}   #btn-confirm-delete-employees
    
    Click Button                       jquery:.${BUTTON_CSS} 
    
    Element Should Not Be Visible       id:confirm-delete-modal
    Page Should Not Contain Element     data-index:1

Force Scroll Up
    [Arguments]     ${Y_AXIS}
    Execute Javascript      window.scroll(0, ${Y_AXIS});

Click Time Button
    [Arguments]                 ${CSS_LOC}
    Click Element               ${CSS_LOC}
    Element Should be Visible   id=timepicker-modal-24

Click Prep Time Button
    Click Time Button       css=#service-collapse-0 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > span:nth-child(2) > button:nth-child(1)

Click Duration Time Button
    Click Time Button       css=#service-collapse-0 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > span:nth-child(2) > button:nth-child(1)

Click Finish Time Button
    Click Time Button       css=#service-collapse-0 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > span:nth-child(2) > button:nth-child(1)

Click Time Chevron
    [Arguments]                 ${CHEVRON_LOC}              ${VALUE_LOC}        ${OPERATOR}
    ${current_val}=             Get Text                   ${VALUE_LOC}
    ${int_val}=                 Convert to Integer          ${current_val}
    ${int_val}=                 Evaluate                    ${int_val} ${OPERATOR} 1
    Click Element               ${CHEVRON_LOC}
    ${current_val}=             Get Text                   ${VALUE_LOC}
    ${new_int_val}=             Convert to Integer          ${current_val}
    Should Be True              ${int_val}==${new_int_val}    

Time Min Chev Up
    Click Time Chevron          ${MIN_CHEV_UP}      ${MINUTE_FIELD}     +

Time Min Chev Down
    Click Time Chevron          ${MIN_CHEV_DOWN}      ${MINUTE_FIELD}     -

Time Hour Chev Up
    Click Time Chevron          ${HR_CHEV_UP}      ${HR_FIELD}     +

Time Hour Chev Down
    Click Time Chevron          ${HR_CHEV_DOWN}        ${HR_FIELD}     -


Time Modal Up Up Down Check
    Time Min Chev Up
    Time Min Chev Up
    Time Min Chev Down
    Time Hour Chev Up
    Time Hour Chev Up
    Time Hour Chev Down

Time Updated
    [Arguments]                 ${TIME_FIELD}
    ${modal_hr}                 Get Text            ${HR_FIELD}
    ${modal_min}                Get Text            ${MINUTE_FIELD}
    Click Element               css=#timepicker-modal-24 > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > button:nth-child(2)

    Element Should Not Be Visible   id=timepicker-modal-24
    Textfield Value Should Be       ${TIME_FIELD}          ${modal_hr}:${modal_min}

Prep Time Updated
    Time Updated                id=services-0-prep-time

Duration Time Updated
    Time Updated                id=services-0-duration

Finish Time Updated
    Time Updated                id=services-0-finish-time



Launch Payment, Invoices and Taxes (Smart Start) page
    Launch Services (Smart Start) page (Service)
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)
    Wait Until Element Is visible           id=invoices-payments-content
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

Choose Stripe Payment Method and Connect
    Element Should Be Visible               id=stripe
    Force Scroll Up                         64
    Click Element                           jquery:a:contains('Connect with Stripe')
    Select Window                           title=Stripe: Connect with GigaBook 
    Wait Until Element Is Visible           link=GigaBook     timeout=30 seconds
    Location Should Be                      ${STRIPE_GB_URL}


Select Option from Dropdown
    [Arguments]                 ${Location}             ${Option}
    Select From List By Label   ${Location}             ${Option}
    List Selection Should Be    ${Location}             ${Option}
   
Click Inactive Clickable Button
    [Arguments]                 ${BTN_LOC}
    Element Attribute Value Should Be       ${BTN_LOC}         class           btn btn-primary not-active
    Click Element               ${BTN_LOC}
    Element Attribute Value Should Be       ${BTN_LOC}        class           btn btn-primary active

Enable Do you want to collect payment at the time the appointment is booked
    Click Inactive Clickable Button         jquery:button[data-value="req"]
    
Enable Do you want to automatically send invoices when collecting payments
    ${elem_off_button}=                         Get WebElement                  jquery:button[data-name="invoicesPayments[AutoCreateInvAppt]"][data-value="off"]
    ${elem_on_button}=                         Get WebElement                  jquery:button[data-name="invoicesPayments[AutoCreateInvAppt]"][data-value="on"]
    ${class_attrib}=                         Get Element Attribute           ${elem_off_button}          class
    Run Keyword If                          '${class_attrib}'=="btn btn-primary not-active"          Click Element           ${elem_off_button}
    Click Inactive Clickable Button         ${elem_on_button}

Enable/Disable Do you need to charge tax on the services you provide
    ${data_attrib}=                         Get Element Attribute           jquery:button[class="btn btn-primary charge-tax not-active"]            data-value
    Click Element                           jquery:button[class="btn btn-primary charge-tax not-active"]
    ${new_data_attrib}=                     Get Element Attribute           jquery:button[class="btn btn-primary charge-tax not-active"]            data-value
    Run Keyword If                          '${data_attrib}'=="on"          Should Be True          '${new_data_attrib}'=="off"
    ...                                     ELSE                            Should Be True          '${new_data_attrib}'=="on"


If Yes/Enabled, Populate What is the tax rate? (If applicable)
    ${elem_button}=                         Get WebElement                  jquery:button[class="btn btn-primary charge-tax not-active"] 
    ${data_attrib}=                         Get Element Attribute           ${elem_button}           data-value
    Run Keyword If                          '${data_attrib}'=="on"          Click Element            ${elem_button} 
    Element Should Be Visible               id:invoices-payments-default-tax-rate 
    Populate and Confirm                    id:invoices-payments-default-tax-rate           12.00


Click Next Step (from Invoices/Payments)
    Click Element                           ${NEXT_STEP_BUTTON}
    Wait Until Page Contains Element        id:notifications

Launch Reminder and Notification Settings (Smart Start)
    Launch Payment, Invoices and Taxes (Smart Start) page
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)
    Wait Until Element Is visible           id:notifications
    Wait Until Element Is Not Visible       jquery:div[data-notify="container"][role="alert"]       timeout=30 seconds
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

How do you want to send booking confirmations - Email
    Click Element                           jquery:button[data-target="#email-modal"]
    Element Should Be Visible               id:email-modal

Click Done Button
    [Arguments]                             ${MODAL_ID}
    Click Element                           jquery:button[data-dismiss="modal"]
    Element Should Not Be Visible           ${MODAL_ID}

Select Client from Email Modal
    Element Should Be Visible               id:email-modal
    Select Checkbox                         id:notifications-app-email-notify-c
    Click Done Button                       id:email-modal
    Element Attribute Value Should Be       id:email-to-client                  class               label label-success

Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations
    How do you want to send booking confirmations - Email
    Select Client from Email Modal

