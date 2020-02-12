*** Settings ***
Documentation     A resource file with reusable action keywords
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.


*** Keywords ***
#*************** User Sign Up ***************
Click 'Free Trial' Hyperlink
    Click Element           ${FREE_TRIAL_BUTTON}
    
    Location Should Be      ${SIGNUP_URL}
    Comment                 Sign up form page was displayed
    
Populate Business / Organization Name
    ${RANDOM_NUMBER}        Random Number
    Input Text              ${BUSS_ORG_NAME_FIELD}          Auto Test ${RANDOM_NUMBER}

    Textfield Should Contain    ${BUSS_ORG_NAME_FIELD}      Auto Test ${RANDOM_NUMBER}
    Comment                 Business / Organization Name was populated
    
Populate First Name
    ${RANDOM_FIRST_NAME}    Random First Name
    Input Text              ${FIRST_NAME_FIELD}             ${RANDOM_FIRST_NAME}

    Textfield Should Contain  ${FIRST_NAME_FIELD}        ${RANDOM_FIRST_NAME}
    Comment                 First Name was populated
    
Populate Last Name
    ${RANDOM_LAST_NAME}    Random Last Name
    Input Text              ${LAST_NAME_FIELD}          ${RANDOM_LAST_NAME}

    Textfield Should Contain  ${LAST_NAME_FIELD}        ${RANDOM_LAST_NAME}
    Comment                 Last Name was populated

Populate Email Address with Valid Credentials
    ${RANDOM_NUMBER}        Random Number
    Input Text              ${EMAIL_FIELD}              AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com

    Set Global Variable     ${GLOBAL_TEST_EMAIL_USE}    1
    Set Global Variable     ${GLOBAL_TEST_EMAIL}        AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com

    Textfield Should Contain  ${EMAIL_FIELD}            AUTOTESTemail${RANDOM_NUMBER}@fcqamail.com
    Comment                 Email Address was populated.

Populate Phone Number
    Input Text              ${PHONE_FIELD}              111111111111

    Textfield Should Contain  ${PHONE_FIELD}            +11(111)111-1111
    Comment                 Phone Number was populated.

Populate Password with Valid Credentials
    Input Text              ${PASSWORD_FIELD}           thisissomepass1234

    Textfield Should Contain  ${PASSWORD_FIELD}            thisissomepass1234
    Comment                 Password was populated.

Populate Password (again)
    Input Text              ${PASSWORD_AGAIN_FIELD}           thisissomepass1234

    Textfield Should Contain  ${PASSWORD_AGAIN_FIELD}            thisissomepass1234
    Comment                 Re-Enter Password was populated.

Set 'Terms and Conditions' button to ON
    Click Element           ${AGREE_HANDLE_SWTICH}

    Wait until page contains element    ${FIRST_ACCNT_CREATING_FORM} .bootstrap-switch-on
    Comment                 Terms and Conditions button was set to ON. 

Click on 'Create Account' button
    Click Element           ${CREATE_ACCOUNT_BUTTON}

    Wait Until Page Contains     Let Us Walk You Through                timeout=90 seconds
    Wait Until Page Contains Element        ${QUICK_TOUR_BUTTON}        timeout=90 seconds
    Wait Until Page Contains Element        ${GIGA_TIPS_BUTTON}         timeout=90 seconds

    Location Should Be      ${WELCOME_URL}
    Comment                 Redirected to Welcome Page
#*************** User Sign Up ***************


#*************** Getting Started with your Account ***************
Launch Gigabook Welcome Page - Quick Tour, Account Setup (Smart Start) and Gigatips
    Confirm Dashboard Page
    Go to Welcome Page and Confirm
    Wait Until Page Contains Element        ${QUICK_TOUR_BUTTON}
    Wait Until Page Contains Element        ${ACCOUNT_SETUP_BUTTON}
    Wait Until Page Contains Element        ${GIGA_TIPS_BUTTON}
    
    Comment                 Welcome Page - Quick Tour, Account Setup (Smart Start) and Gigatips was displayed.

Click Account Setup (Smart Start)
    Click Element                           ${ACCOUNT_SETUP_BUTTON}

    Location Should Be                      ${SMARTSTART_URL}
    Wait Until Page Contains Element        ${INTRO_QUESTIONS_MODULE}
    Comment                 Redirect to Smart Start. Intro Question page was displayed.

Click Service Booking, Group Function Registration and Resource Bookings (Smart Start - Intro Questions)
    Click Element                           ${SERVICE_BOOKINGS_BUTTON}
    Click Element                           ${GROUP_FUNCTION_REG_BUTTON}
    Click Element                           ${RESOURCE_BOOKINGS_BUTTON}

    Wait Until Page Contains Element        ${SERVICE_BOOKINGS_BUTTON}.active
    Wait Until Page Contains Element        ${SERVICE_TAB_BUTTON}

    Wait Until Page Contains Element        ${GROUP_FUNCTION_REG_BUTTON}.active
    Wait Until Page Contains Element        ${GROUPS_TAB_BUTTON}

    Wait Until Page Contains Element        ${RESOURCE_BOOKINGS_BUTTON}.active
    Wait Until Page Contains Element        ${RESOURCES_TAB_BUTTON}

    Comment                                 Redirect to Smart Start. Intro Question page was displayed.

Click Service Bookings (Smart Start - Intro Questions)
    Click Element                           ${SERVICE_BOOKINGS_BUTTON}

    Wait Until Page Contains Element        ${SERVICE_BOOKINGS_BUTTON}.active
    Wait Until Page Contains Element        ${SERVICE_TAB_BUTTON}

    Comment                                 Service Bookings (Smart Start - Intro Questions) was selected.
    
Click Resource Bookings (Smart Start - Intro Questions)
    Click Element                           ${SERVICE_BOOKINGS_BUTTON}
    Click Element                           ${RESOURCE_BOOKINGS_BUTTON}

    Wait Until Page Contains Element        ${SERVICE_BOOKINGS_BUTTON}.active
    Wait Until Page Contains Element        ${SERVICE_TAB_BUTTON}

    Wait Until Page Contains Element        ${RESOURCE_BOOKINGS_BUTTON}.active
    Wait Until Page Contains Element        ${RESOURCES_TAB_BUTTON}

    Comment                                 Redirect to Smart Start. Intro Question page was displayed.

Click Group Function Registration Bookings (Smart Start - Intro Questions)
    Click Element                           ${GROUP_FUNCTION_REG_BUTTON}

    Wait Until Page Contains Element        ${GROUP_FUNCTION_REG_BUTTON}.active
    Wait Until Page Contains Element        ${GROUPS_TAB_BUTTON}

    Comment                                 Redirect to Smart Start. Intro Question page was displayed.

Enable Does your business have more than one employee? (Smart Start - Intro Questions)
    Click Element                           ${BUSS_HAS_ONE_EMP_CHECKB_YES}

    Wait Until Page Contains Element        ${BUSS_HAS_ONE_EMP_CHECKB_YES}.active
    Wait Until Page Contains Element        ${EMPLOYEES_TAB_BUTTON}
    Comment                                 Does your business have more than one employee? (Smart Start - Intro Questions) was enabled.

Enable Does your business have more than one location? (Smart Start - Intro Questions)
    Click Element                           ${BUSS_HAS_MORE_ONE_LOC_YES}
    
    Wait Until Page Contains Element        ${BUSS_HAS_MORE_ONE_LOC_YES}.active
    Wait Until Page Contains Element        ${BUSS_LOC_TAB_BUTTON}
    Comment                                 Does your business have more than one location? (Smart Start - Intro Questions) was enabled.

Enable Do you want to take payments online or through GigaBook invoicing? (Smart Start - Intro Questions)
    Click Element                           ${PAYMENT_QUESTION_YES}

    Wait Until Page Contains Element        ${PAYMENT_QUESTION_YES}.active
    Wait Until Page Contains Element        ${INV_PAY_TAB_BUTTON}
    Comment                                 Do you want to take payments online or through GigaBook invoicing? (Smart Start - Intro Questions) was enabled.

Enable Do you want to connect GigaBook to Apple, Outlook, Google Calendar? (Smart Start - Intro Questions)
    Click Element                           ${CONNECTION_QUESTION_YES}

    Wait Until Page Contains Element        ${CONNECTION_QUESTION_YES}.active
    Wait Until Page Contains Element        ${CONNECTION_TAB_BUTTON}
    Comment                                 Enable Do you want to connect GigaBook to Apple, Outlook, Google Calendar? (Smart Start - Intro Questions)

Enable Do you provide services at your client's location? (Smart Start - Intro Questions)
    Click Element                           ${SERVICE_CLIENT_QUES_YES}

    Wait Until Page Contains Element        ${SERVICE_CLIENT_QUES_YES}.active
    Comment                                 Enable Do you provide services at your client's location? (Smart Start - Intro Questions)

Click Next Step To Business Information
    Click Element                           ${NEXT_STEP_BUTTON}

    Wait Until Page Contains Element        ${BUSS_INFO_ACCORDION}
    Wait Until Page Contains Element        ${BUSS_INFO_DET_HEADING}
    Wait Until Page Contains Element        ${BUSS_INFO_HOUR_HEADING}
    Comment                                 Business Information (Smart Start) page was displayed
#*************** Getting Started with your Account ***************


#*************** Business Info ***************
Launch Business Information (Smart Start) page
    Launch Gigabook Welcome Page - Quick Tour, Account Setup (Smart Start) and Gigatips
    Click Account Setup (Smart Start)
    
    # Click Element       ${BUSS_INFO_TAB_BUTTON}
    Click Element       ${NEXT_STEP_BUTTON}

    Wait Until Page Contains Element        ${BUSS_INFO_ACCORDION}
    Wait Until Page Contains Element        ${BUSS_INFO_DET_HEADING}
    Wait Until Page Contains Element        ${BUSS_INFO_HOUR_HEADING}
    
    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

Populate Valid Postal Code (If applicable)

    Input Text                  ${BUSS_INFO_ZIP_INPUT_FIELD}    84044
    Textfield Should Contain    ${BUSS_INFO_ZIP_INPUT_FIELD}    84044
    Click Element               ${BUSS_INFO_PON_INPUT_FIELD}

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    ${SELECTED_VALUE}   Get Selected List Value     ${BUSS_INFO_TZN_INPUT_FIELD}
    Should Be Equal     America/Denver      ${SELECTED_VALUE}

Populate Valid Phone Number
    Input Text                  ${BUSS_INFO_PON_INPUT_FIELD}        8019726405
    Textfield Should Contain    ${BUSS_INFO_PON_INPUT_FIELD}        (801)972-6405

Populate Website
    Input Text                  ${BUSS_INFO_WEB_INPUT_FIELD}        https://fullscale.io
    Textfield Should Contain    ${BUSS_INFO_WEB_INPUT_FIELD}        https://fullscale.io

Select Timezone (If applicable)
    Select From List By Label   ${BUSS_INFO_TZN_INPUT_FIELD}        Alaska

    # ${SELECTED_VALUE}   Get Selected List Value     ${BUSS_INFO_TZN_INPUT_FIELD}
    # Should Be Equal     America/Anchorage           ${SELECTED_VALUE}

Click Update Business Picture
    Choose File      ${BUSS_INFO_PIC_UPLOAD_FIELD}      ${CURDIR}${/}speciments${/}image.jpg

    Wait Until Element Is Visible       ${BUSS_INFO_PIC_UPLOAD_MODAL}      timeout=90s

    Click Element       ${BUSS_INFO_PIC_UPLOAD_CROP_B}
    
    ${SRC}          Get Element Attribute       ${BUSS_INFO_PIC_UPLOAD_CANVAS}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}images/uploads/blank_logo.jpg

Enable Does your business have a physical address? (Disabled by Default)
    # This will check if the button "Does your business have a physical address?" is disabled by default
    Element Should Not Be Visible       ${PHY_ADD_BUSS_INFO_YES}.active

    Click Element                       ${PHY_ADD_BUSS_INFO_YES}

    Wait Until Element Is Visible       ${PHY_ADD_BUSS_INFO_YES}.active      timeout=90s

Populate Street Address (If applicable)
    Input Text                      ${PABI_STREET_ADD}      Avenir
    Textfield Should Contain        ${PABI_STREET_ADD}      Avenir

Populate City (If applicable)
    Input Text                      ${PABI_CITY}            Salt Lake
    Textfield Should Contain        ${PABI_CITY}            Salt Lake
    
Select State/Enter State (If applicable)
    # Scroll Element Into View        ${PABI_COUNTRY}

    # Select From List By Value       ${PABI_STATE}           UT

    # ${SELECTED_VALUE}   Get Selected List Value     ${PABI_STATE}
    # Should Be Equal     UT                          ${SELECTED_VALUE}
    Comment         Disabled

Select Country (If applicable)
    Select From List By Value       ${PABI_COUNTRY}         US

    # ${SELECTED_VALUE}   Get Selected List Value     ${PABI_COUNTRY}
    # Should Be Equal     PH                          ${SELECTED_VALUE}

# Select your best Time & Enable/Disabled Hours of Operation

Click Next Step Business Location
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Page Contains Element        ${BUSS_LOC_ACCRDION}


#*************** Business Info ***************


#*************** Set up GigaBook to take Bookings at all of your Business Locations ***************
Launch Business Locations (Smart Start) page
    Launch Business Information (Smart Start) page

    # Click Element                           ${BUSS_LOC_TAB_BUTTON}
    Click Element                           ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Page Contains Element        ${BUSS_LOC_ACCRDION}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

Main Location was displayed. Populate Currency (If applicable)
    Wait Until Page Contains Element        ${BUSS_LOC_CURRENCY}      timeout=90s

    Select From List By Value       ${BUSS_LOC_CURRENCY}           PHP
    Select From List By Value       ${BUSS_LOC_CURRENCY}           USD

    # ${SELECTED_VALUE}   Get Selected List Value     ${PABI_STATE}
    # Should Be Equal     UT                          ${SELECTED_VALUE}

Populate Tax Rate (If applicable)
     Input Text                     ${BUSS_LOC_TAX_RATE}            10.00

     Textfield Should Contain       ${BUSS_LOC_TAX_RATE}            10.00


Click Add More
    Click Element                   ${BUSS_LOC_ADD_MORE_BUTTON}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Element Is Visible   ${BUSS_LOC_DET_HEADING_1}   timeout=90 seconds

Populate Location Name
    Input Text                      ${BUSS_LOC_LOC_NAME_1}      Ayala Mall

    Textfield Should Contain        ${BUSS_LOC_LOC_NAME_1}      Ayala Mall

Populate Valid Postal Code (If applicable) (Bussiness Location)
    Input Text                      ${BUSS_LOC_ZIP_CODE_1}      29108

    Click Element                   ${BUSS_LOC_BUSS_PHONE_1}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds
    
    Textfield Should Contain        ${BUSS_LOC_ZIP_CODE_1}      29108

Populate Valid Phone Number (Bussiness Location)
    Input Text                      ${BUSS_LOC_BUSS_PHONE_1}    8002227156

    Textfield Should Contain        ${BUSS_LOC_BUSS_PHONE_1}    (800)222-7156

Populate Website (Bussiness Location)
    Input Text                      ${BUSS_LOC_BUSS_WEBSITE_1}  https://fullscale.io    

    Textfield Should Contain        ${BUSS_LOC_BUSS_WEBSITE_1}  https://fullscale.io

Select Timezone (If applicable) (Bussiness Location)
    Select From List By Value       ${BUSS_LOC_TIMEZONE_1}         America/Denver

    ${SELECTED_VALUE}               Get Selected List Value     ${BUSS_LOC_TIMEZONE_1}
    Should Be Equal                 America/Denver              ${SELECTED_VALUE}

Click Update Business Picture (Bussiness Location)
    Choose File                     ${BUSS_LOC_PHOTO_LOGO_1}    ${CURDIR}${/}speciments${/}image.jpg

    Wait Until Element Is Visible   ${BUSS_LOC_CROPPER_JS_MOD}  timeout=90 seconds

    Click Element                   ${BUSS_LOC_CROPPER_JS_MOD_CROP_BUT}

    ${SRC}                          Get Element Attribute       ${BUSS_LOC_IMG_CANVAS_1}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}images/uploads/blank_logo.jpg

Enable Does your business have a physical address? (Disabled by Default) (Bussiness Location)
    Click Element                   ${BUSS_LOC_ADD_PAN_1_YES}

    Click Element                   ${BUSS_LOC_ADD_PAN_1_NO}

    Wait Until Element Is Visible   ${BUSS_LOC_ADD_PAN_1_NO}.active      timeout=90s

    Click Element                   ${BUSS_LOC_ADD_PAN_1_YES}

    Wait Until Element Is Visible   ${BUSS_LOC_ADD_PAN_1_YES}.active      timeout=90s

Populate Street Address (If applicable) (Bussiness Location)
    Input Text                      ${BUSS_LOC_STREET_1}        2100 College St
    Textfield Should Contain        ${BUSS_LOC_STREET_1}        2100 College St

Populate City (If applicable) (Bussiness Location)
    Textfield Should Contain        ${BUSS_LOC_CITY_1}          Newberry

Select State/Enter State (If applicable) (Bussiness Location)
    ${SELECTED_VALUE}               Get Selected List Value     ${BUSS_LOC_STATE_1}
    Should Be Equal                 SC              ${SELECTED_VALUE}

Select Country (If applicable) (Bussiness Location)       
    Select From List By Value       ${BUSS_LOC_COUNTRY_1}       CA
    
    ${SELECTED_VALUE}               Get Selected List Value     ${BUSS_LOC_COUNTRY_1}
    Should Be Equal                 CA              ${SELECTED_VALUE}

Select Currency (Bussiness Location)
    Select From List By Value       ${BUSS_LOC_CURRENCY_1}      CAD
    
    ${SELECTED_VALUE}               Get Selected List Value     ${BUSS_LOC_CURRENCY_1}
    Should Be Equal                 CAD              ${SELECTED_VALUE}

Populate Tax Rate (Bussiness Location)
    Input Text                      ${BUSS_LOC_TAX_RATE_1}      10.00          
    Textfield Should Contain        ${BUSS_LOC_TAX_RATE_1}      10.00

Click X button
    Click Element                   ${BUSS_LOC_DELETE_X_BUTTON}

    Wait Until Element Is Visible   ${BUSS_LOC_CONF_DELETE_MOD}:visible      timeout=90s

Click Delete
    Click Element                   ${BUSS_LOC_CONF_DELETE_MOD_DEL_BUT}:visible

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds
    
    Wait Until Element Is Not Visible       linkText=New Location: Ayala Mall      timeout=90 seconds


Click Next Step Employees
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Page Contains Element        ${EMPLOYEES_ACCORDION}

    Wait Until Page Contains Element        ${EMPLOYEES_HEADING_0}


#*************** Input Info's for your Staff Members so that we knew more about the people in your business. ***************
Launch Staff Member (Smart Start) page
    Launch Business Locations (Smart Start) page
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Page Contains Element        ${EMPLOYEES_PROV_TERM}

    Wait Until Page Contains Element        ${EMPLOYEES_ACCORDION}
    
Change What do you call the employees at your business? (If applicable)
    Input Text                              ${EMPLOYEES_PROV_TERM}              New Staff Member

    Textfield Should Contain                ${EMPLOYEES_PROV_TERM}              New Staff Member

Click Add More (Employees)
    Click Element                           ${EMPLOYEES_ADD_MORE_BUT}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

    Wait Until Page Contains Element        ${EMPLOYEES_HEADING_1}

Populate First Name (Employees)
    Input Text                              ${EMPLOYEES_FIRST}                  Dio
    Textfield Should Contain                ${EMPLOYEES_FIRST}                  Dio

Populate Last Name (Employees)
    Input Text                              ${EMPLOYEES_LAST_NAME}              Santos
    Textfield Should Contain                ${EMPLOYEES_LAST_NAME}              Santos

Populate Valid Email (Employees)
    Input Text                              ${EMPLOYEES_EMAIL_ADD}              testemail1@gmail.com
    Textfield Should Contain                ${EMPLOYEES_EMAIL_ADD}              testemail1@gmail.com

Select Color Picker (Employees)
    Click Element                           ${EMPLOYEES_COLOR_PICKER}

    Click Element                           ${EMPLOYEES_COLOR_PICKER_PICK}

    ${ATTR}      Get Element Attribute       ${EMPLOYEES_COLOR_PICKER} .sp-preview-inner       style
    Should Be Equal As Strings      ${ATTR}      background-color: rgb(204, 0, 0);

Enable/Disable available locations for that staff member (Employees)
    Execute Javascript                      $("input[id^=employees-][id*=-locations]").show()

    Page Should Contain Element             ${EMPLOYEES_LOCATION}:checked       timeout=90 seconds

    Click Element                           ${EMPLOYEES_LOCATION}

    Page Should Contain Element             ${EMPLOYEES_LOCATION}:not(:checked)     timeout=90 seconds

    Click Element                           ${EMPLOYEES_LOCATION}

    Page Should Contain Element             ${EMPLOYEES_LOCATION}:checked       timeout=90 seconds

    Execute Javascript                      $("input[id^=employees-][id*=-locations]").hide()

Click Update Employee Picture (Employees)
    Choose File     ${EMPLOYEES_MAIN_IMAGE}    ${CURDIR}${/}speciments${/}image.jpg

    Click Element   ${EMPLOYEES_MAIN_IMAGE_CROPPER_BUT}

    ${SRC}          Get Element Attribute       ${BUSS_INFO_PIC_UPLOAD_CANVAS}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}assets/lib/smart-start/img/employee.png

Yes/No (Enable/Disable) Do you want to setup the availability of your staff now? (Employees)
    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_Y}.active
    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_N}.not-active

    Click Element                           ${EMPLOYEES_AVAILABILITY_N}

    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_Y}.not-active
    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_N}.active

    Click Element                           ${EMPLOYEES_AVAILABILITY_Y}

    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_Y}.active
    Page Should Contain Element             ${EMPLOYEES_AVAILABILITY_N}.not-active

Click X button (Employees)
    Click Element                           ${EMPLOYEES_X_BUT}

    Wait Until Element Is Visible           ${EMPLOYEES_CONFIRM_MODAL}      timeout=90s

Click Delete (Employees)
    Click Element                           ${EMPLOYEES_CONFIRM_DELETE_BUT}

    Wait Until Element Is Not Visible       link:New Staff Member: Dio Shibito

Click Next Step (Employees)
    Click Element                           ${NEXT_STEP_BUTTON} 

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                What services do you offer?      timeout=90s
#*************** Input Info's for your Staff Members so that we knew more about the people in your business. ***************

#*************** For Service Bookings that your business offers ***************
Launch Services (Smart Start) page (Service)
    Launch Staff Member (Smart Start) page
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is visible           ${SERVICE_ACCORDION_HEADER}      timeout=90s
    
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90 seconds

Populate Service Name (Service)
    Input Text                              ${SERVICES_SERVICE_NAME}         Automated QA Testing
    
    Textfield Should Contain                ${SERVICES_SERVICE_NAME}         Automated QA Testing

Populate Price (Optional) (Service)
    Input Text                              ${SERVICES_SERVICE_PRICE}   9950
    
    Textfield Should Contain                ${SERVICES_SERVICE_PRICE}   99.50

Click Prep Time (If applicable) (Service)
    Click Element                           ${SERVICES_PREP_TIME} + span button

    Wait Until Element Is Visible           jquery:#timepicker-modal-24      timeout=90s

    Click Element                           ${SERVICES_TIME_PICK_MIN}

    Click Element                           ${SERVICES_TIME_SEL_MIN}:contains(15):visible

    Click Element                           jquery:#timepicker-modal-24 .timepicker-update-btn

    Textfield Should Contain                ${SERVICES_PREP_TIME}       00:15

Click Duration (If applicable) (Service)
    Click Element                           ${SERVICES_DURATION} + span button

    Wait Until Element Is Visible           jquery:#timepicker-modal-24      timeout=90s

    Click Element                           ${SERVICES_TIME_PICK_MIN}

    Click Element                           ${SERVICES_TIME_SEL_MIN}:contains(25):visible

    Click Element                           jquery:#timepicker-modal-24 .timepicker-update-btn

    Textfield Should Contain                ${SERVICES_DURATION}       01:25

Click Finish Time (If applicable) (Service)
    Click Element                           ${SERVICES_FINISH_TIME} + span button

    Wait Until Element Is Visible           jquery:#timepicker-modal-24      timeout=90s

    Click Element                           ${SERVICES_TIME_PICK_MIN}

    Click Element                           ${SERVICES_TIME_SEL_MIN}:contains(10):visible

    Click Element                           jquery:#timepicker-modal-24 .timepicker-update-btn

    Textfield Should Contain                ${SERVICES_FINISH_TIME}       00:10

Click Update Service Picture (Service)
    Choose File     ${SERVICES_MAIN_IMAGE}    ${CURDIR}${/}speciments${/}image.jpg

    Click Element   ${SERVICES_CROPPER_JS_CROP_BUT}

    ${SRC}          Get Element Attribute       ${SERVICES_IMG_CANVAS}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}assets/lib/smart-start/img/service.png

Disable Allow Home Service (If applicable) (Service)
    Execute Javascript                      $('input[id^=services-][id*=-client-location]').show()

    Page Should Contain Element             ${SERVICES_CLIENT_LOCATION}:checked

    Click Element                           ${SERVICES_CLIENT_LOCATION}

    Page Should Contain Element             ${SERVICES_CLIENT_LOCATION}:not(:checked)

    Execute Javascript                      $('input[id^=services-][id*=-client-location]').hide()

Add a short description (If applicable) (Service)
    Input Text                              ${SERVICES_SHORT_DESCRIPTION}       This is some short description.

    Textarea Should Contain                 ${SERVICES_SHORT_DESCRIPTION}       This is some short description.

Enable/Disable This Service is provided by: (Service)
    Execute Javascript                      $('input[id^=services-][id*=-providers]').show()

    Page Should Contain Element             ${SERVICES_PROVIDERS}:checked

    Click Element                           ${SERVICES_PROVIDERS}

    Page Should Contain Element             ${SERVICES_PROVIDERS}:not(:checked)

Click Add More (Service)
    Click Element                           ${SERVICES_ADD_BUTTON}

    Wait Until Element Is Visible           link:New Service      timeout=90s

Click X button (Service)
    Click Element                           ${SERVICES_SERVICE_DELETE_X}:eq(0)

    Wait Until Element Is Visible           ${SERVICES_CONFIRM_MODAL}      timeout=90s

Click Delete (Service)

    Click Element                           ${SERVICES_SERVICE_DELETE_BUT}

    Wait Until Element Is Not Visible       link:New Service

Click Next Step (Service)
    Click Element                           ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                What types of group functions do you offer?      timeout=90s


#*************** For Service Bookings that your business offers ***************

#*************** For Group Session Bookings that your business offers ***************
Launch Groups (Smart Start) page (Group)
    Launch Services (Smart Start) page (Service)
    
    Populate Service Name (Service)
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                What do you call the group sessions at your business?

    Wait Until Page Contains Element        id=groups-accordion

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

Change What do you call the group sessions at your business? (If applicable) (Group)
    Input Text                              ${GROUPS_MEETING_TERM}              AUTO Group Name
    Textfield Should Contain                ${GROUPS_MEETING_TERM}              AUTO Group Name
    
Populate Group Session Name (Group)
    Input Text                              ${GROUPS_NAME}                      AUTO Group Session Name
    Textfield Should Contain                ${GROUPS_NAME}                      AUTO Group Session Name

Populate Price (Optional) (Group)
    Input Text                              ${GROUPS_PRICE}                     9655
    Textfield Should Contain                ${GROUPS_PRICE}                     96.55

Click Prep Time (If applicable) (Group)
    Click Element                           ${GROUPS_PREP_TIME} + span button

    Time Pick       15

    Textfield Should Contain                ${GROUPS_PREP_TIME}       00:15

Click Duration (If applicable) (Group)
    Click Element                           ${GROUPS_DURATION} + span button

    Time Pick       25

    Textfield Should Contain                ${GROUPS_DURATION}       01:25

Click Finish Time (If applicable) (Group)
    Click Element                           ${GROUPS_FINISH_TIME} + span button

    Time Pick       10

    Textfield Should Contain                ${GROUPS_FINISH_TIME}       00:10

Populate Attendee Limits (Optional) Minimum (Group)
    Input Text                              ${GROUPS_MIN_ATTENDEES}     7
    
    Textfield Should Contain                ${GROUPS_MIN_ATTENDEES}     7

Populate Attendee Limits (Optional) Maximum (Group)
    Input Text                              ${GROUPS_MAX_ATTENDEES}     12
    
    Textfield Should Contain                ${GROUPS_MAX_ATTENDEES}     12

Add a short description (If applicable) (Group)
    Input Text                              ${GROUPS_DESC}              This is some group short desc

    Textarea Should Contain                 ${GROUPS_DESC}              This is some group short desc

Click Update Group Picture (Group)
    Choose File     ${GROUPS_MAIN_IMAGE}    ${CURDIR}${/}speciments${/}image.jpg

    Click Element   ${GROUPS_MAIN_IMAGE_CROPPER_BUT}

    ${SRC}          Get Element Attribute       ${GROUPS_IMG_CANVAS}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}assets/lib/smart-start/img/group.png

Enable/Disable This Service is provided by: (Group)
    Execute Javascript                  $("[id^=groups-][id*=-providers]").show()
    Execute Javascript                  $("[id^=groups-][id*=-providers] + label").click()

    Checkbox Should Be Selected             ${GROUPS_PROVIDERS}:eq(0)

    ${COUNT}        Get Element Count       ${GROUPS_PROVIDERS}

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${GROUPS_PROVIDERS}:eq(${INDEX})

    Execute Javascript                  $("[id^=groups-][id*=-providers]").hide()

Click Add More (Group)
    Click Element                   ${GROUPS_ADD_MORE}

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    ${COUNT}        Get Element Count       ${GROUPS_HEADINGS}
    
    Should Be True                  ${COUNT} > 1
    
Click X button (Group)
    Click Element                   ${GROUPS_DELETE_BUTTON}:eq(0)

    Wait Until Element Is Visible     ${GROUPS_DELETE_MODAL}      timeout=90s


Click Delete (Group)
    Click Element                   ${GROUPS_DELETE_CONFIRM}

    ${COUNT}        Get Element Count       ${GROUPS_HEADINGS}
    
    Should Be True                  ${COUNT} == 1

Click Next Step (Group)
    Click Element                   ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains         Resource Booking      timeout=90s
#*************** For Group Session Bookings that your business offers ***************

#*************** For Resource Bookings "things" that your business offers ***************
Launch Resources (Smart Start) page (Resources)
    Launch Groups (Smart Start) page (Group)
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible     ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains         Resource Booking

Populate Resource Name (Resources)
    Input Text                      ${RESOURCES_NAME}               AUTO Resource name
    
    Textfield Should Contain        ${RESOURCES_NAME}               AUTO Resource name

Select Color Picker (Resources)
    Select Color Picker (Employees)

Disable/Enable chosen Services (Resources)
    Execute Javascript              $('[id^=resources-][id*=-services]').show()
    Execute Javascript      $("[id^=resources-][id*=-services] + label").click()
    
    ${COUNT}        Get Element Count           ${RESOURCES_SERVICES}

    :FOR            ${INDEX}        IN RANGE        ${COUNT}
    \               Checkbox Should Not Be Selected             ${RESOURCES_SERVICES}:eq(${INDEX})
    
    Execute Javascript      $("[id^=resources-][id*=-services] + label").click()

    :FOR            ${INDEX}        IN RANGE        ${COUNT}
    \               Checkbox Should Be Selected                 ${RESOURCES_SERVICES}:eq(${INDEX})
    
    Execute Javascript              $('[id^=resources-][id*=-services]').hide()
    
Disable/Enable chosen Group Sessions (Resources)
    Execute Javascript              $('[id^=resources-][id*=-groups]').show()
    Execute Javascript      $("[id^=resources-][id*=-groups] + label").click()
    
    ${COUNT}        Get Element Count           ${RESOURCES_GROUPS}

    :FOR            ${INDEX}        IN RANGE        ${COUNT}
    \               Checkbox Should Not Be Selected             ${RESOURCES_GROUPS}:eq(${INDEX})
    
    Execute Javascript      $("[id^=resources-][id*=-groups] + label").click()

    :FOR            ${INDEX}        IN RANGE        ${COUNT}
    \               Checkbox Should Be Selected                 ${RESOURCES_GROUPS}:eq(${INDEX})
    
    Execute Javascript              $('[id^=resources-][id*=-groups]').hide()
    
Click Update Resource Picture (Resources)
    Choose File      ${RESOURCES_PIC_UPLOAD_FIELD}      ${CURDIR}${/}speciments${/}image.jpg

    Wait Until Element Is Visible       ${RESOURCES_PIC_UPLOAD_MODAL}      timeout=90s

    Click Element       ${RESOURCES_PIC_UPLOAD_CROP_B}
    
    ${SRC}          Get Element Attribute       ${RESOURCES_PIC_UPLOAD_CANVAS}       src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}assets/lib/smart-start/img/resource.png

Click Add More (Resources)
    Click Element                       ${RESOURCES_ADD_MORE}

    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    ${COUNT}        Get Element Count   ${RESOURCES_HEADINGS}
    
    Should Be True                      ${COUNT} > 1

Click X button (Resources)
    Click Element                       ${RESOURCES_DELETE_BUTTON}:eq(0)

    Wait Until Element Is Visible       ${RESOURCES_DELETE_MODAL}      timeout=90s

Click Delete (Resources)
    Click Element                       ${RESOURCES_DELETE_CONFIRM}

    Wait Until Element Is Not Visible   ${RESOURCES_DELETE_MODAL}      timeout=90s

    ${COUNT}        Get Element Count   ${RESOURCES_HEADINGS}
    
    Should Be True                      ${COUNT} == 1

Click Next Step (Resources)
    Click Element                       ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains            Payment, Invoices and Taxes      timeout=90s

    
#*************** For Resource Bookings "things" that your business offers ***************

#*************** Input Type of Payments  ***************
Launch Payment, Invoices and Taxes (Smart Start) page (Invoice/Payments)
    Launch Resources (Smart Start) page (Resources)
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                Payment, Invoices and Taxes

Launch Payment, Invoices and Taxes (Smart Start) page (Invoice/Payments) (Booking Only)
    Launch Staff Member (Smart Start) page
    
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                Payment, Invoices and Taxes

Choose Payment Method you like and Connect (Invoice/Payments)
    Click Element                           ${PAYMENT_STRIPE_TAB}
    Wait Until Element Is Visible           ${PAYMENT_STRIPE_PANEL}         timeout=90s
    
    Click Element                           ${PAYMENT_AUTHNET_TAB}
    Wait Until Element Is Visible           ${PAYMENT_AUTHNET_PANEL}        timeout=90s

    Click Element                           ${PAYMENT_BRAINTHREE_TAB}
    Wait Until Element Is Visible           ${PAYMENT_BRAINTHREE_PANEL}     timeout=90s

    Click Element                           ${PAYMENT_PAYPAL_TAB}
    Wait Until Element Is Visible           ${PAYMENT_PAYPAL_PANEL}         timeout=90s
    
    Run Keyword If      ${GLOBAL_TEST_EMAIL_USE} == 0     Input Text        ${PAYMENT_PAYPAL_EMAIL}       ${VALID_USER}
    Run Keyword If      ${GLOBAL_TEST_EMAIL_USE} == 1     Input Text        ${PAYMENT_PAYPAL_EMAIL}       ${GLOBAL_TEST_EMAIL}

Select Currency (Invoice/Payments)
    Select From List By Value       ${PAYMENT_PAYMENTS_CURRENCY}            AED
    Select From List By Value       ${PAYMENT_PAYMENTS_CURRENCY}            USD

    ${SELECTED_VALUE}               Get Selected List Value     ${PAYMENT_PAYMENTS_CURRENCY}
    Should Be Equal                 USD                         ${SELECTED_VALUE}

Enable Do you want to collect payment at the time the appointment is booked? (Invoice/Payments)
    Click Element                       ${PAYMENT_PAYMENTS_BCP_YES}
    Wait Until Page Contains Element    ${PAYMENT_PAYMENTS_BCP_YES}.active
    
Enable Do you want to automatically send invoices when collecting payments? (Invoice/Payments)
    Click Element                       ${PAYMENT_PAYMENTS_ACIA_YES}
    Wait Until Page Contains Element    ${PAYMENT_PAYMENTS_ACIA_YES}.active

Enable/Disable Do you need to charge tax on the services you provide? (Invoice/Payments)
    Click Element                       ${PAYMENT_PAYMENTS_CTS_YES}
    Wait Until Page Contains Element    ${PAYMENT_PAYMENTS_CTS_YES}.active

If Yes/Enabled, Populate What is the tax rate? (If applicable) (Invoice/Payments)
    Input Text                      ${PAYMENT_PAYMENTS_TAXRATE}         9.75
    Textfield Should Contain        ${PAYMENT_PAYMENTS_TAXRATE}         9.75

Click Next Step (Invoice/Payments)
    Click Element                   ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                Reminder and Notification Settings      timeout=90s

#*************** Input Type of Payments  ***************

#*************** Set Reminders & Notification for your Bookings on how and when to contact Clients or Staff ***************
Launch Reminder and Notification Settings (Smart Start) (Notifications)
    Launch Payment, Invoices and Taxes (Smart Start) page (Invoice/Payments)
        
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s

    Wait Until Page Contains                Reminder and Notification Settings      timeout=90s
    
Launch Reminder and Notification Settings (Smart Start) (Notifications) (Booking Only)
    Launch Payment, Invoices and Taxes (Smart Start) page (Invoice/Payments) (Booking Only)
        
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s

    Wait Until Page Contains                Reminder and Notification Settings      timeout=90s

Choose How do you want to send booking confirmations? and Who can receive notifications for booking confirmations? (Notifications)
    Click Element                           ${NOTIFICATION_EMAIL_BUTTON}

    Wait Until Element Is Visible           ${NOTIFICATION_EMAIL_MODAL}      timeout=90s

    Execute Javascript                      $("#notifications-app-email-notify-c + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_EMAIL_BUTTON_CLIENT_LABEL}.label-success     timeout=90s

    Execute Javascript                      $("#notifications-app-email-notify-p + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_EMAIL_BUTTON_NEW_STAFF_LABEL}.label-success     timeout=90s

    Click Element                           ${NOTIFICATION_EMAIL_MODAL} button

    Wait Until Element Is Not Visible       ${NOTIFICATION_EMAIL_MODAL}     timeout=90s

    Click Element                           ${NOTIFICATION_SMS_BUTTON}

    Wait Until Element Is Visible           ${NOTIFICATION_SMS_MODAL}       timeout=90s

    Execute Javascript                      $("#notifications-app-txt-notify-c + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_SMS_BUTTON_CLIENT_LABEL}.label-success     timeout=90s

    Execute Javascript                      $("#notifications-app-txt-notify-p + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_SMS_BUTTON_NEW_STAFF_LABEL}.label-success     timeout=90s

    Click Element                           ${NOTIFICATION_SMS_MODAL} button

    Wait Until Element Is Not Visible       ${NOTIFICATION_SMS_MODAL}       timeout=90s

Choose How do you want to send reminders to your clients? (Notifications)
    Click Element                           ${NOTIFICATION_CLIENT_REMINDER_SETTINGS}

    Wait Until Element Is Visible           ${NOTIFICATION_CLIENT_REMINDER_COLLAPSE}        timeout=90s
    
If Email, Select When should an email reminder be sent to clients? (Notifications)
    Execute Javascript                      $("#notifications-app-rem-email-c + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_CLIENT_REMINDER_EMAIL_REM}       timeout=90s

    Select From List By Value               ${NOTIFICATION_CLIENT_REMINDER_EMAIL_REM}       2700

    ${SELECTED_VALUE}                       Get Selected List Value     ${NOTIFICATION_CLIENT_REMINDER_EMAIL_REM}
    Should Be Equal                         2700                        ${SELECTED_VALUE}

If Text, When should client SMS/Text reminders be sent? (Notifications)
    Execute Javascript                      $("#notifications-app-rem-text-c + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_CLIENT_REMINDER_SMS_REM}         timeout=90s

    Select From List By Value               ${NOTIFICATION_CLIENT_REMINDER_SMS_REM}       7200

    ${SELECTED_VALUE}                       Get Selected List Value     ${NOTIFICATION_CLIENT_REMINDER_SMS_REM}
    Should Be Equal                         7200                        ${SELECTED_VALUE}

Enable/Choose How do you want to send reminder to your staff members? (Notifications)
    Click Element                           ${NOTIFICATION_PROVIDER_REMINDER_SETTINGS}

    Wait Until Element Is Visible           ${NOTIFICATION_PROVIDER_REMINDER_COLLAPSE}      timeout=90s

If Email, Select When should an email reminder be sent to Staff Member? (Notifications)
    Execute Javascript                      $("#notifications-app-rem-email-p + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_PROVIDER_REMINDER_EMAIL_REM}     timeout=90s

    Select From List By Value               ${NOTIFICATION_PROVIDER_REMINDER_EMAIL_REM}       2700

    ${SELECTED_VALUE}                       Get Selected List Value     ${NOTIFICATION_PROVIDER_REMINDER_EMAIL_REM}
    Should Be Equal                         2700                        ${SELECTED_VALUE}

If Text, When should staff members SMS/Text reminders be sent? (Notifications)
    Execute Javascript                      $("#notifications-app-rem-text-p + label").click()

    Wait Until Element Is Visible           ${NOTIFICATION_PROVIDER_REMINDER_SMS_REM}       timeout=90s

    Select From List By Value               ${NOTIFICATION_PROVIDER_REMINDER_SMS_REM}       7200

    ${SELECTED_VALUE}                       Get Selected List Value     ${NOTIFICATION_PROVIDER_REMINDER_SMS_REM}
    Should Be Equal                         7200                        ${SELECTED_VALUE}

Click Next Step (Notifications)
    Click Element                           ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                Booking Preferences      timeout=90s
#*************** Set Reminders & Notification for your Bookings on how and when to contact Clients or Staff ***************

#*************** Booking Preference ***************
Launch Booking Preferences (Smart Start) page (Booking Preference)
    Launch Reminder and Notification Settings (Smart Start) (Notifications)
        
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s

    Wait Until Page Contains                Booking Preferences                 timeout=90s

Launch Booking Preferences (Smart Start) page (Booking Preference) (Booking Only)
    Launch Reminder and Notification Settings (Smart Start) (Notifications) (Booking Only)
        
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s

    Wait Until Page Contains                Booking Preferences                 timeout=90s

Enable/Disable Let Clients cancel? (Booking Preference)
    Click Element                           ${BOOKING_PREF_LET_CLIENT_CANCEL_YES}

    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_CANCEL_YES}.active

    Click Element                           ${BOOKING_PREF_LET_CLIENT_CANCEL_NO}

    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_CANCEL_NO}.active

    Click Element                           ${BOOKING_PREF_LET_CLIENT_CANCEL_YES}

If Enabled, Select Until what time the Clients can Cancel the bookings (Booking Preference)
    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_CANCEL}       timeout=90s

    Select From List By Value               ${BOOKING_PREF_LET_CLIENT_CANCEL}       720

    ${SELECTED_VALUE}                       Get Selected List Value     ${BOOKING_PREF_LET_CLIENT_CANCEL}
    Should Be Equal                         720                         ${SELECTED_VALUE}

Enable/Diasble Let Clients reschedule? (Booking Preference)
    Click Element                           ${BOOKING_PREF_LET_CLIENT_RESCED_YES}

    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_RESCED_YES}.active

    Click Element                           ${BOOKING_PREF_LET_CLIENT_RESCED_NO}

    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_RESCED_NO}.active

    Click Element                           ${BOOKING_PREF_LET_CLIENT_RESCED_YES}

If Enabled, Select Until what time the Clients can Reschedule the bookings (Booking Preference)
    Wait Until Element Is Visible           ${BOOKING_PREF_LET_CLIENT_RESCED}       timeout=90s

    Select From List By Value               ${BOOKING_PREF_LET_CLIENT_RESCED}       1440

    ${SELECTED_VALUE}                       Get Selected List Value     ${BOOKING_PREF_LET_CLIENT_RESCED}
    Should Be Equal                         1440                        ${SELECTED_VALUE}
    
Enable/Disable Allow multiple appointments to be booked in one transaction? (Booking Preference)
    Click Element                           ${BOOKING_PREF_MULTIPLE_BOOKING_YES}

    Wait Until Element Is Visible           ${BOOKING_PREF_MULTIPLE_BOOKING_YES}.active

    Click Element                           ${BOOKING_PREF_MULTIPLE_BOOKING_NO}

    Wait Until Element Is Visible           ${BOOKING_PREF_MULTIPLE_BOOKING_NO}.active

    Click Element                           ${BOOKING_PREF_MULTIPLE_BOOKING_YES}

Select What time zone should be display on your booking applications? (Booking Preference)
    Wait Until Element Is Visible           ${BOOKING_PREF_TIMZONE}       timeout=90s

    Select From List By Value               ${BOOKING_PREF_TIMZONE}       ip

    ${SELECTED_VALUE}                       Get Selected List Value     ${BOOKING_PREF_TIMZONE}
    Should Be Equal                         ip                          ${SELECTED_VALUE}

Please choose a color that best represent your business or website (Booking Preference)
    Select Color Picker (Employees)

Enable/Disable What information do you want to collect with your bookings? (Booking Preference)
    Execute Javascript                      $("[id^='booking-preferences-booking-widget-form-fields-']:not([disabled='dsiabled'])").show()
    Execute Javascript                      $("[id^='booking-preferences-booking-widget-form-fields-']:not([disabled='dsiabled'])").click()
    
    ${COUNT}        Get Element Count       ${BOOKING_INFO_FIELDS}

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Not Be Selected             ${BOOKING_INFO_FIELDS}:eq(${INDEX})

    Execute Javascript                      $("[id^='booking-preferences-booking-widget-form-fields-']:not([disabled='dsiabled'])").click()

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${BOOKING_INFO_FIELDS}:eq(${INDEX})
    
    Execute Javascript                      $("[id^='booking-preferences-booking-widget-form-fields-']:not([disabled='dsiabled'])").hide()

Enable Do you want to sell additional products during the booking process? (Booking Preference)
    Click Element                           ${BOOKING_INFO_FIELDS_ADDONS_YES}

    Wait Until Element Is Visible           ${BOOKING_INFO_FIELDS_ADDONS_YES}.active

    Wait Until Element Is Visible           ${BOOKING_INFO_FIELDS_ADDONS_TABLE}

If Enabled, Click + Add More button (Booking Preference)
    Click Element                           ${BOOKING_INFO_FIELDS_AO_ADD_BUTTON}

    Wait Until Element Is Visible           ${BOOKING_INFO_FIELDS_AO_MODAL}       timeout=90s

Enable/Disable Active to make this Add-On visible on the widgets (Booking Preference)
    # Execute Javascript                      $("#add-on-active, #add-on-inventory, #add-on-tax-active").show()
    Execute Javascript                      $("#add-on-active").show()

    Wait Until Element Is Visible           ${BOOKING_INFO_FIELDS_AO_MODAL_ACTIVE}       timeout=90s
    
    Execute Javascript                      $("#add-on-active + label").click()

    Wait Until Element Is Not Visible           ${BOOKING_INFO_FIELDS_AO_MODAL_ACTIVE}:checked       timeout=90s
    
    Execute Javascript                      $("#add-on-active + label").click()

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_AO_MODAL_ACTIVE}:checked       timeout=90s
    
    Execute Javascript                      $("#add-on-active").hide()
    
Disable/Enable Inventory to know if the supply is limited or not (Booking Preference)
    Execute Javascript                      $("#add-on-inventory").show()
    
    Execute Javascript                      $("#add-on-inventory + label").click()
    
    Wait Until Element Is Not Visible           ${BOOKING_INFO_FIELDS_AO_MODAL_INVENTORY}:checked       timeout=90s
    
    Execute Javascript                      $("#add-on-inventory + label").click()

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_AO_MODAL_INVENTORY}:checked       timeout=90s
    
    Execute Javascript                      $("#add-on-inventory").hide()

Disable/Enable Tax (Booking Preference)
    Execute Javascript                      $("#add-on-tax-active").show()
    
    Execute Javascript                      $("#add-on-tax-active + label").click()

    Wait Until Element Is Not Visible           ${BOOKING_INFO_FIELDS_AO_MODAL_TAX_ACTIVE}:checked       timeout=90s
    
    Execute Javascript                      $("#add-on-tax-active + label").click()

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_AO_MODAL_TAX_ACTIVE}:checked       timeout=90s

    Execute Javascript                      $("#add-on-tax-active").hide()

Populate Add-On name (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_NAME}        AUTOMATION Addon Name 
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_AO_MODAL_NAME}        AUTOMATION Addon Name 

Populate Price (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_PRICE}       19245
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_AO_MODAL_PRICE}        192.45

If Activated/Enabled Inventory, Populate Number Available field (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_NUM_AVAIL}       12
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_AO_MODAL_NUM_AVAIL}       12

If Enabled/Activate Tax, Populate Tax Rate (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_TAX}         1000
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_AO_MODAL_TAX}         10.00

Populate Add-On Title (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_TITLE}       AUTOMATION BP Title
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_AO_MODAL_TITLE}       AUTOMATION BP Title

Populate Short Description (If applicable) (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_SHORT_DESC}      AUTOMATION BP Short Description
    Textarea Should Contain             ${BOOKING_INFO_FIELDS_AO_MODAL_SHORT_DESC}      AUTOMATION BP Short Description

Click Update Add-On Picture (Booking Preference)
    Choose File                         ${BOOKING_INFO_FIELDS_AO_MODAL_IMAGE}       ${CURDIR}${/}speciments${/}image.jpg
    
    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_AO_MODAL_CJS_MODAL}       timeout=90s

    Click Element                       ${BOOKING_INFO_FIELDS_AO_MODAL_CJS_MODALOK_BUT}
    
    ${SRC}      Get Element Attribute       ${BOOKING_INFO_FIELDS_AO_MODAL_CANVAS}      src
    Should Not Be Equal As Strings     ${SRC}      ${MAIN_URL}assets/lib/smart-start/img/add-on.png

Populate Long Description (If applicable) (Booking Preference)
    Execute Javascript                  $(".note-codable").show()

    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_LONG_DESC} + div       AUTOMATION BP This is some long description

    Element Should Contain              ${BOOKING_INFO_FIELDS_AO_MODAL_LONG_DESC} + div       AUTOMATION BP This is some long description
    
    Execute Javascript                  $(".note-codable").hide()

Disable Show to All Booking Widget (If applicable) and Enable chosen Services (Booking Preference)
    Execute Javascript                  $("#add-on-show-booking-widget").show();
    Execute Javascript                  $("input[id^='add-on-services']").show();

    Execute Javascript                  $("#add-on-show-booking-widget + label").click();

    Wait Until Element Is Not Visible       ${BOOKING_INFO_FIELDS_AO_SHOW_BOOKING_WID_SW}:checked       timeout=90s

    ${COUNT}        Get Element Count       ${BOOKING_INFO_FIELDS_AO_SERVICES}

    Execute Javascript                  $("input[id^='add-on-services']").click();

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${BOOKING_INFO_FIELDS_AO_SERVICES}:eq(${INDEX})

    Execute Javascript                  $("#add-on-show-booking-widget").hide();
    Execute Javascript                  $("input[id^='add-on-services']").hide();

Disable Show to All Group Widget (If applicable) and Enable chosen Sessions (Booking Preference)
    Execute Javascript                  $("#add-on-show-group-widget").show();

    Execute Javascript                  $("#add-on-show-group-widget + label").click();

    Wait Until Element Is Not Visible   ${BOOKING_INFO_FIELDS_AO_GROUP_WID_SW}:checked

    ${COUNT}        Get Element Count       ${BOOKING_INFO_FIELDS_AO_GROUPS}

    Execute Javascript                  $("input[id^='add-on-groups-']").click();

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${BOOKING_INFO_FIELDS_AO_GROUPS}:eq(${INDEX})


Click Save (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_AO_MODAL_SAVE}
    
    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Element Contains         ${BOOKING_INFO_FIELDS_AO_1ST_ADD_PROD_NAME}         AUTOMATION Addon Name

Enable Do you want to collect more information other than the fields you previously selected? (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_CUSTOM_YES}
    
    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CUSTOM_YES}.active       timeout=90s

If Enabled, Click + Add More button (CT) (Booking Preference) 
    Click Element                       ${BOOKING_INFO_FIELDS_CT_ADD_BUTTON}

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_MODAL}

Populate Custom Form Name (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_CT_FORM_TITLE}                AUTOMATION Custom form Name
    
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_CT_FORM_TITLE}                AUTOMATION Custom form Name

Populate Description (If applicable) (Booking Preference)
    Execute Javascript                  $(".note-codable").show()

    Input Text                          ${BOOKING_INFO_FIELDS_AO_MODAL_LONG_DESC} + div:visible       AUTOMATION BP This is some long description

    Element Should Contain              ${BOOKING_INFO_FIELDS_AO_MODAL_LONG_DESC} + div:visible       AUTOMATION BP This is some long description
    
    Execute Javascript                  $(".note-codable").hide()

Enable Hide Title (If applicable) (Booking Preference)
    Execute Javascript                  $("#custom-form-hide-title").show();

    Execute Javascript                  $("#custom-form-hide-title + label").click();

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_HIDE_TITLE}:checked       timeout=90s

    Execute Javascript                  $("#custom-form-hide-title").hide();

Enable Hide Description (If applicable) (Booking Preference)
    Execute Javascript                  $("#custom-form-hide-description").show();

    Execute Javascript                  $("#custom-form-hide-description + label").click();

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_HIDE_DESC}:checked       timeout=90s

    Execute Javascript                  $("#custom-form-hide-description").hide();

Enable Hide from Widget (If applicable) (Booking Preference)
    Execute Javascript                  $("#custom-form-hide").show();

    Execute Javascript                  $("#custom-form-hide + label").click();

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_HIDE_FR_WIDGET}:checked       timeout=90s

    Execute Javascript                  $("#custom-form-hide").hide();

Click Add New Question and Choose your desired format/button (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS} button

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_FIELDS}       timeout=90s

    Click Element                       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_CHECKBOX_FIELDS}

    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ITEM}       timeout=90s

Enable Required (If applicable) (Booking Preference)
    Execute Javascript                  $("[id^='required-']").show()

    Execute Javascript                  $("[id^='required-'] + label").click()

    Wait until Element is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_REQUIRED}:checked       timeout=90s

    Execute Javascript                  $("[id^='required-']").hide()

Populate Question in the Enter your Question Field (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_TEXT}       AUTOMATION Question
    
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_TEXT}       AUTOMATION Question

Populate Choices of your Question and delimited it with comma (Booking Preference)
    Input Text                          ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ANSWERS}    AUTOAnswer1, AUTOAnswer2, AUTOAnswer3, AUTOAnswer4
    
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ANSWERS}    AUTOAnswer1, AUTOAnswer2, AUTOAnswer3, AUTOAnswer4

Click Add Sub Question (If applicable) (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS} button:eq(2)

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SUBFO}

    Click Element                       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_CHECKBOX_FIELDS}:visible

    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SUBQUE}

    Input Text                          ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_TEXT}.sub-input     AUTOMATION Question
    
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_TEXT}.sub-input     AUTOMATION Question

    Input Text                          ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ANSWERS}.sub-input    AUTOAnswer1, AUTOAnswer2, AUTOAnswer3, AUTOAnswer4
    
    Textfield Should Contain            ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ANSWERS}.sub-input    AUTOAnswer1, AUTOAnswer2, AUTOAnswer3, AUTOAnswer4

Click Save (CT) (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SAVE}

    Wait Until Element Is Not Visible   ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Element Contains         ${BOOKING_INFO_FIELDS_CT_1ST_FIELD_NAME}        AUTOMATION Custom form Name     timeout=90s

Enable/Disable Auto-Confirm appointments (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_ADDONS_YES}

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_ADDONS_YES}.active

    Click Element                       ${BOOKING_INFO_FIELDS_ADDONS_NO}

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_ADDONS_NO}.active

    Click Element                       ${BOOKING_INFO_FIELDS_ADDONS_YES}

Select designate range of time/hours/days on how frequently do you want to offer online bookings (Booking Preference)
    Select From List By Value               ${BOOKING_INFO_FIELDS_FREQUENCY}       20

    ${SELECTED_VALUE}                       Get Selected List Value     ${BOOKING_INFO_FIELDS_FREQUENCY}
    Should Be Equal                         20                          ${SELECTED_VALUE}

Disable/Enable Do you want to establish a buffer in which appointments can't be offered? (Booking Preference)
    Click Element                       ${BOOKING_INFO_FIELDS_BUFFER_NO}

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_BUFFER_NO}.active

    Click Element                       ${BOOKING_INFO_FIELDS_BUFFER_YES}

    Wait Until Element Is Visible       ${BOOKING_INFO_FIELDS_BUFFER_YES}.active

If Enabled Do you want to establish a buffer in which appt can't be offered, Select range of time/hours/days on disallow bookings inside of this window (Booking Preference)
    Select From List By Value               ${BOOKING_INFO_FIELDS_MIN_BUFFER}       2880

    ${SELECTED_VALUE}                       Get Selected List Value     ${BOOKING_INFO_FIELDS_MIN_BUFFER}
    Should Be Equal                         2880                        ${SELECTED_VALUE}

Enable/Disable chosen Member/Resources on would you like to exclude any service providers from online bookings (Booking Preference)
    Execute Javascript                  $("[id^=booking-preferences-][id*=-providers]").show()

    Execute Javascript                  $("[id^=booking-preferences-][id*=-providers] + label").click()

    ${COUNT}        Get Element Count       ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICE_PROVIDERS}

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICE_PROVIDERS}:eq(${INDEX})

    Execute Javascript                  $("[id^=booking-preferences-][id*=-providers] + label").click()

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Not Be Selected             ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICE_PROVIDERS}:eq(${INDEX})

    Execute Javascript                  $("[id^=booking-preferences-][id*=-providers]").hide()

Enable/Disable chosen Services on would you like to exclude any of your services from online bookings (Booking Preference)
    Execute Javascript                  $("[id^=booking-preferences-][id*=-services]").show()

    Execute Javascript                  $("[id^=booking-preferences-][id*=-services] + label").click()

    ${COUNT}        Get Element Count       ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICES}

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Be Selected             ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICES}:eq(${INDEX})

    Execute Javascript                  $("[id^=booking-preferences-][id*=-services] + label").click()

    :FOR    ${INDEX}    IN RANGE    ${COUNT}
    \       Checkbox Should Not Be Selected             ${BOOKING_INFO_FIELDS_EXCLUDE_SERVICES}:eq(${INDEX})

    Execute Javascript                  $("[id^=booking-preferences-][id*=-services]").hide()

Click Next Step (Booking Preference)
    Click Element                           ${NEXT_STEP_BUTTON}

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}      timeout=90s

    Wait Until Page Contains                Calendar Sync      timeout=90s
#*************** Booking Preference ***************

#*************** Sync up with a third-party services ***************
Launch Calendar Sync (Smart Start)
    Launch Booking Preferences (Smart Start) page (Booking Preference)
        
    Click Element                           ${NEXT_STEP_BUTTON}:eq(0)

    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s

    Wait Until Page Contains                Calendar Sync                 timeout=90s

Click Add Calendar (Smart Start)
    Click Element                           ${CALENDAR_SYNC_MAIN_ADD_CALENDAR}

    Wait Until Element Is Visible           ${CALENDAR_SYNC_MAIN_MODAL_DIALOG}      timeout=90s

    Wait Until Page Contains                 Third Party Calendar Email Address     timeout=90s

Populate Email Address to Link and Save it (Smart Start)
    Run Keyword If      ${GLOBAL_TEST_EMAIL_USE} == 0       Populate Email Address to Link and Save it (Smart Start) Global (False)

    Run Keyword If      ${GLOBAL_TEST_EMAIL_USE} == 1       Populate Email Address to Link and Save it (Smart Start) Global (True)

Populate Email Address to Link and Save it (Smart Start) Global (False)
    Input Text      ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_EMAIL}       ${VALID_USER}
    Textfield Should Contain        ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_EMAIL}       ${VALID_USER}
    Click Element       ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_SAVE_BUT}
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s
    Wait Until Element Contains             ${CALENDAR_SYNC_MAIN_EMAILS}:eq(0)       ${VALID_USER}      timeout=90s

Populate Email Address to Link and Save it (Smart Start) Global (True)
    Input Text        ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_EMAIL}       ${GLOBAL_TEST_EMAIL}
    Textfield Should Contain        ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_EMAIL}       ${GLOBAL_TEST_EMAIL}
    Click Element       ${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_SAVE_BUT}
    Wait Until Element Is Not Visible       ${SMART_START_LOADING_IMAGE}        timeout=90s
    Wait Until Element Contains             ${CALENDAR_SYNC_MAIN_EMAILS}:eq(0)       ${GLOBAL_TEST_EMAIL}      timeout=90s

Click Finish (Smart Start)
    Click Element                           ${FINISH_BUTTON}:eq(0)

    Wait Until Page Contains                 That's It!     timeout=90s


#*************** Sync up with a third-party services ***************
