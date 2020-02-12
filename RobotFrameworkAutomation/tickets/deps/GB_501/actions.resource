*** Settings ***
Documentation     A resource file with reusable action keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

Library           SeleniumLibrary

*** Keywords ***
#*************** General Test Cases ***************
Go to Booking Widget
    Go To                   ${BOOKING_WIDGET_URL}
    Location Should Be      ${BOOKING_WIDGET_URL}#panel_step_widget_colors
    Wait Until Page Contains        Booking Widget Configuration: Step 1 / 9

Click Jump to: Options
    Select From List By Value       ${PANELS_JUMP_TO}       step_widget_options
    Location Should Be              ${BOOKING_WIDGET_URL}#panel_step_widget_options
    Wait Until Element Contains        ${FORM_WIDGET_PROVIDER} h3      Step 4 / 9

Enable/Carting ON "Allow multiple appointments in a shopping cart?"
    Check If "Allow multiple appointments in a shopping cart?" is prematurely on        ${ALLOW_CARTING_SW_ID}.bootstrap-switch-on      ${ALLOW_CARTING_SW_LABEL}
    Click Element           ${ALLOW_CARTING_SW_LABEL}
    Wait Until Element Is Visible      ${ALLOW_CARTING_SW_ID}.bootstrap-switch-on
    
Click Jump to: Reschedule/Cancel (If applicable)
    Select From List By Value       ${PANELS_JUMP_TO}       step_widget_reschedule_cancel
    Wait Until Page Contains        Booking Widget Configuration: Step 7 / 9

Enable "Allow clients to reschedule appointment" (If applicable)
    Check If "Allow multiple appointments in a shopping cart?" is prematurely on        ${ALLOW_CLIENT_RESCED_ID}.bootstrap-switch-on       ${ALLOW_CLIENT_RESCED_ID} [for="BookingAllowClientReschedule"]
    Click Element       ${ALLOW_CLIENT_RESCED_ID} [for="BookingAllowClientReschedule"]
    Wait Until Element Is Visible       ${ALLOW_CLIENT_RESCED_ID}.bootstrap-switch-on
    Wait Until Page Contains            How soon before the appointment can a client reschedule it?
    Wait Until Element Is Visible      ${RESCHEDULE_MIN_BUF}

Click Save button
    Click Element       ${BW_SAVE_BUTTON}
    Wait Until Page Contains            Successfully Saved on
    Wait Until Element Is Visible       ${ALERT_SUCCESS}

Click Share button
    Click Element       ${BW_SHOW_EMB_BUTTON}
    Wait Until Element Is Visible       ${BW_EMBED_MODAL}

Click URL to Share and click Copy button
    ${WIDGET_URL_VALUE}     Get Value       ${WIDGET_URL_FIELD}

    Click Element       ${URL_TO_SHARE_BUT}
    Click Element       ${WIDGET_URL_FIELD}
    Click Element       ${COPY_URL_BUT}
    
    ${CLIPBOARD_CONTENT}    Getsystemclipboardcontent

    Run Keyword If     '${WIDGET_URL_VALUE}' != '${CLIPBOARD_CONTENT}'      Fail        msg=Clipboard not copied

Paste/Open the URL to another tab
    ${CLIPBOARD_CONTENT}    Getsystemclipboardcontent
    Go To               ${CLIPBOARD_CONTENT}
    Location Should Be  ${CLIPBOARD_CONTENT}#panel_step_cal
    
    Wait Until Element Is Visible       ${POWERED_BY_LOGO}


Paste/Open the URL to another tab (Multiple)
    ${CLIPBOARD_CONTENT}    Getsystemclipboardcontent
    Go To               ${CLIPBOARD_CONTENT}
    Location Should Be  ${CLIPBOARD_CONTENT}#panel_step_choose_location
    
    Wait Until Element Is Visible       ${POWERED_BY_LOGO}

Choose a date and time that works for you
    ${CENTER_TIME_BATCH_LENGTH}     Execute Javascript      return $(".listing_date_col").eq(1).find(".hour-btn").length;
    ${PREFERED_TIME}                Execute Javascript      return Math.round(Math.random((${CENTER_TIME_BATCH_LENGTH} - 1)));
                                    Execute Javascript      $(".listing_date_col").eq(1).find(".hour-btn").eq(${PREFERED_TIME}).click();

    Wait Until Page Contains        Please review your selected appointment     timeout=30

    Wait Until Element Is Visible   ${CONT_TO_COUT_BUT}     timeout=90

    Click Element                   ${CONT_TO_COUT_BUT}

Fill up required contact information

    Input Text                      ${FIRST_NAME_FIELD}     TEST NAME
    Textfield Value Should Be       ${FIRST_NAME_FIELD}     TEST NAME     

    Input Text                      ${LAST_NAME_FIELD}      TEST NAME
    Textfield Value Should Be       ${LAST_NAME_FIELD}      TEST NAME     
    
    Input Text                      ${PHONE_NUM_FIELD}      8019726405
    Textfield Value Should Be       ${PHONE_NUM_FIELD}      (801)972-6405     

    Input Text                      ${EMAIL_ADD_FIELD}     mike@ren1.com
    Textfield Value Should Be       ${EMAIL_ADD_FIELD}     mike@ren1.com     
    
    Input Text                      ${CLIENT_PW_FIELD}      TESTPASS
    Textfield Value Should Be       ${CLIENT_PW_FIELD}      TESTPASS     
    
    Input Text                      ${NOTES_FIELD}          TEST NOTES
    Textarea Value Should Be        ${NOTES_FIELD}          TEST NOTES     
    
Click Submit button
    Click Element                   ${WIDGET_SUBMIT}
    Wait Until Page Contains        Your request has been sent.     timeout=30
    Wait Until Page Contains        Book A New Appointment       timeout=30

Click Reschedule or Book a New Appointment
    Click Element                   ${RESCHEDULE_OR_NEW}
    Wait Until Page Contains        Existing       timeout=90

Click Reschedule button
    Execute Javascript              $(".btn-reschedule").eq(0).click()

    Wait Until Page Contains        When would be a good time?     timeout=90

    Wait Until Element Is Visible       ${LISTING_COLS}     timeout=90

    Wait Until Element Is Not Visible   ${LISTING_LOADER}     timeout=90

Choose a date and time that works for you Reschedule
    ${CENTER_TIME_BATCH_LENGTH}     Execute Javascript      return $(".listing_date_col").eq(1).find(".hour-btn").length;
    ${PREFERED_TIME}                Execute Javascript      return Math.round(Math.random((${CENTER_TIME_BATCH_LENGTH} - 1)));
                                    Execute Javascript      $(".listing_date_col").eq(1).find(".hour-btn").eq(${PREFERED_TIME}).click();

    Wait Until Page Contains        Please enter your contact information     timeout=90

Click Submit button Final
    Execute Javascript              $(".btn-submit-form:visible:contains('Submit')").click();
    Wait Until Page Contains        Your request has been sent.     timeout=90

Choose which Location do you want to book
    Execute Javascript              $(".business-item").eq(0).click()
    Wait Until Page Contains        Schedule an appointment now!        timeout=90
    Wait Until Page Contains        Please choose one of our services        timeout=90

Choose one of our services - Click Book Now button of the chosen service
    Execute Javascript              $(".service-item").eq(0).click()
    Wait Until Page Contains        Do you have a preferred Staff Member?        timeout=90
    Wait Until Page Contains        Please choose one or "No Preference"        timeout=90


Choose one of your preferred Staff Member/Provider
    Execute Javascript              $(".provider-item").eq(1).click()
    Wait Until Page Contains        When would be a good time?        timeout=90
    Wait Until Page Contains        Please choose a date and time that works for you        timeout=90

Choose a date and time that works for you (Multiple Account)
    Choose a date and time that works for you

Fill up required contact information (Multiple Account)
    Fill up required contact information

Click Submit button (Multiple Account)
    Click Submit button

Click Reschedule or Book a New Appointment (Multiple Account)
    Click Reschedule or Book a New Appointment

Click Reschedule button (Multiple Account)
    Execute Javascript              $(".btn-reschedule").eq(0).click()

Choose one of our services - Click Book Now button of the chosen service (Multiple Account)
    Choose one of our services - Click Book Now button of the chosen service

Choose one of your preferred Staff Member/Provider (Multiple Account)
    Choose one of your preferred Staff Member/Provider

Choose a date and time that works for you Reschedule (Multiple Account)
    Choose a date and time that works for you Reschedule

Click Submit button Final (Multiple Account)
    Click Submit button Final