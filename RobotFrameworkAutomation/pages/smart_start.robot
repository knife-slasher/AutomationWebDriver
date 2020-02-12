*** Settings ***
Documentation     A resource file with reusable keywords and variables for smart-start page tests.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot
Resource          ./smart_start/smart_start_actions.robot
Resource          ./smart_start/smart_start_expectations.robot
Resource          ./smart_start/smart_start_helpers.robot

*** Variables ***
# Create Account Page
${FIRST_ACCNT_CREATING_FORM}    css=#form_step_begin
${FREE_TRIAL_BUTTON}            css=.free-trial-container a
${BUSS_ORG_NAME_FIELD}          id=BusinessNameID
${FIRST_NAME_FIELD}             id=FirstNameID
${LAST_NAME_FIELD}              id=LastNameID
${EMAIL_FIELD}                  id=EmailAddID
${PHONE_FIELD}                  id=ContactNoID
${PASSWORD_FIELD}               id=PasswordID
${PASSWORD_AGAIN_FIELD}         id=PasswordConfirmID
${AGREE_HANDLE_SWTICH}          css=#form_step_begin .bootstrap-switch-label
${CREATE_ACCOUNT_BUTTON}        xpath=(//button[@type='button'])[3]

# Smart Start
${QUICK_TOUR_BUTTON}            jquery:.wistia_click_to_play:has(.fa-play-circle)
${ACCOUNT_SETUP_BUTTON}         jquery:.btn-success:has(.fa-user-circle)
${GIGA_TIPS_BUTTON}             jquery:.wistia_click_to_play:has(.fa-info-circle)

${INTRO_QUESTIONS_MODULE}       id=gigabook-products

${BUSS_INFO_TAB_BUTTON}         jquery:a[href="#business-information"]
${SERVICE_TAB_BUTTON}           jquery:a[href="#services"]
${EMPLOYEES_TAB_BUTTON}         jquery:a[href="#employees"]
${BUSS_LOC_TAB_BUTTON}          jquery:a[href="#business-locations"]
${INV_PAY_TAB_BUTTON}           jquery:a[href="#invoices-payments"]
${CONNECTION_TAB_BUTTON}        jquery:a[href="#calendar-sync"]
${GROUPS_TAB_BUTTON}            jquery:a[href="#groups"]
${RESOURCES_TAB_BUTTON}         jquery:a[href="#resources"]

${SERVICE_BOOKINGS_BUTTON}      jquery:#item-services
${GROUP_FUNCTION_REG_BUTTON}    jquery:#item-groups
${RESOURCE_BOOKINGS_BUTTON}     jquery:#item-resources

${BUSS_HAS_ONE_EMP_CHECKB_YES}  jquery:[data-name='introQuestions[employees]'][data-value='true']
${BUSS_HAS_ONE_EMP_CHECKB_NO}   jquery:[data-name='introQuestions[employees]'][data-value='false']

${BUSS_HAS_MORE_ONE_LOC_YES}    jquery:[data-name='introQuestions[businessLocations]'][data-value='true']
${BUSS_HAS_MORE_ONE_LOC_NO}     jquery:[data-name='introQuestions[businessLocations]'][data-value='false']

${PAYMENT_QUESTION_YES}         jquery:[data-name='introQuestions[invoicesPayments]'][data-value='true']
${PAYMENT_QUESTION_NO}          jquery:[data-name='introQuestions[invoicesPayments]'][data-value='false']

${CONNECTION_QUESTION_YES}      jquery:[data-name='introQuestions[calendarSync]'][data-value='true']
${CONNECTION_QUESTION_NO}       jquery:[data-name='introQuestions[calendarSync]'][data-value='false']

${SERVICE_CLIENT_QUES_YES}      jquery:[data-name='introQuestions[provideServicesAtBusinessClientLocation]'][data-value='Y']
${SERVICE_CLIENT_QUES_NO}       jquery:[data-name='introQuestions[provideServicesAtBusinessClientLocation]'][data-value='F']

${SMART_START_LOADING_IMAGE}    id=loading-screen

# Tab page contents
# Buss Info Tab
${BUSS_INFO_ACCORDION}          id=business-information-accordion
${BUSS_INFO_DET_HEADING}        id=business-details-heading
${BUSS_INFO_HOUR_HEADING}       id=business-hours-heading

${BUSS_INFO_ZIP_INPUT_FIELD}    id=business-information-zip-code
${BUSS_INFO_PON_INPUT_FIELD}    id=business-information-business-phone
${BUSS_INFO_WEB_INPUT_FIELD}    id=business-information-business-website
${BUSS_INFO_TZN_INPUT_FIELD}    id=business-information-timezone

${BUSS_INFO_PIC_UPLOAD_FIELD}   id=business-information-photo-logo
${BUSS_INFO_PIC_UPLOAD_CANVAS}  id=business-information-img-canvas

${BUSS_INFO_PIC_UPLOAD_MODAL}   id=business-information-cropperjs-modal
${BUSS_INFO_PIC_UPLOAD_CROP_B}  css=#business-information-cropperjs-modal .business-information-cropperjs-crop-btn

${PHY_ADD_BUSS_INFO_YES}        jquery:[data-name="businessInformation[NoAdd]"][data-value="Y"]
${PHY_ADD_BUSS_INFO_NO}         jquery:[data-name="businessInformation[NoAdd]"][data-value="N"]

${PABI_STREET_ADD}              id=business-information-street
${PABI_CITY}                    id=business-information-city
${PABI_STATE}                   id=business-information-state
${PABI_COUNTRY}                 id=business-information-country

# Buss Location Tab
${BUSS_LOC_ACCRDION}            id=business-locations-accordion
# ${BUSS_LOC_DET_HEADING}         id=business-location-heading-0
${BUSS_LOC_DET_HEADING}         jquery:[id^=business-location-heading-]:visible
# ${BUSS_LOC_CURRENCY}            id=business-locations-0-currency
${BUSS_LOC_CURRENCY}            jquery:[id^=business-locations-][id*=-currency]
# ${BUSS_LOC_TAX_RATE}            id=business-locations-0-default-tax-rate
${BUSS_LOC_TAX_RATE}            jquery:[id^=business-locations-][id*=-default-tax-rate]:visible
${BUSS_LOC_ADD_MORE_BUTTON}     id=business-locations-add-more

# ${BUSS_LOC_DET_HEADING_1}       id=business-location-heading-1
${BUSS_LOC_DET_HEADING_1}       jquery:[id^=business-location-heading-]:visible
# ${BUSS_LOC_LOC_NAME_1}          id=business-locations-1-location-name
${BUSS_LOC_LOC_NAME_1}          jquery:[id^=business-locations-][id*=-location-name]:visible
# ${BUSS_LOC_ZIP_CODE_1}          id=business-locations-1-zipcode
${BUSS_LOC_ZIP_CODE_1}          jquery:[id^=business-locations-][id*=-zipcode]:visible
# ${BUSS_LOC_BUSS_PHONE_1}        id=business-locations-1-business-phone
${BUSS_LOC_BUSS_PHONE_1}        jquery:[id^=business-locations-][id*=-business-phone]:visible
# ${BUSS_LOC_BUSS_WEBSITE_1}      id=business-locations-1-business-website
${BUSS_LOC_BUSS_WEBSITE_1}      jquery:[id^=business-locations-][id*=-business-website]:visible
# ${BUSS_LOC_TIMEZONE_1}          id=business-locations-1-timezone
${BUSS_LOC_TIMEZONE_1}          jquery:[id^=business-locations-][id*=-timezone]:visible
# ${BUSS_LOC_PHOTO_LOGO_1}        id=business-locations-1-photo-logo
${BUSS_LOC_PHOTO_LOGO_1}        jquery:[id^=business-locations-][id*=-photo-logo]:visible
${BUSS_LOC_CROPPER_JS_MOD}      id=business-locations-cropperjs-modal
${BUSS_LOC_CROPPER_JS_MOD_CROP_BUT}      class=business-locations-cropperjs-crop-btn
# ${BUSS_LOC_IMG_CANVAS_1}        id=business-locations-img-canvas-1
${BUSS_LOC_IMG_CANVAS_1}        jquery:[id^=business-locations-img-canvas-]:visible
${BUSS_LOC_STREET_1}            jquery:[name="businessLocations[1][Street]"]
# ${BUSS_LOC_CITY_1}              id=business-locations-1-city
${BUSS_LOC_CITY_1}              jquery:[id^=business-locations-][id*=-city]:visible
# ${BUSS_LOC_STATE_1}             id=business-locations-1-state
${BUSS_LOC_STATE_1}             jquery:[id^=business-locations-][id*=-state]:visible
# ${BUSS_LOC_COUNTRY_1}           id=business-locations-1-country
${BUSS_LOC_COUNTRY_1}           jquery:[id^=business-locations-][id*=-country]:visible
# ${BUSS_LOC_CURRENCY_1}          id=business-locations-1-currency
${BUSS_LOC_CURRENCY_1}          jquery:[id^=business-locations-][id*=-currency]:visible
# ${BUSS_LOC_TAX_RATE_1}          id=business-locations-1-default-tax-rate
${BUSS_LOC_TAX_RATE_1}          jquery:[id^=business-locations-][id*=-default-tax-rate]:visible
${BUSS_LOC_DELETE_X_BUTTON}     class=business-locations-delete
${BUSS_LOC_CONF_DELETE_MOD}     jquery:#confirm-delete-modal
${BUSS_LOC_CONF_DELETE_MOD_DEL_BUT}     jquery:#confirm-delete-modal .btn-confirm-delete-business-locations


${BUSS_LOC_ADD_PAN_1_YES}       jquery:[data-target="#business-locations-address-panel-1"][data-value="Y"]
${BUSS_LOC_ADD_PAN_1_NO}        jquery:[data-target="#business-locations-address-panel-1"][data-value="N"]

# Employees Tab
${EMPLOYEES_PROV_TERM}      id=account-prov-term
${EMPLOYEES_ACCORDION}      id=employees-accordion
# ${EMPLOYEES_HEADING_0}      id=employee-heading-0
${EMPLOYEES_HEADING_0}      jquery:[id^=employee-heading-]:visible
${EMPLOYEES_ADD_MORE_BUT}   id=employees-add-more

# ${EMPLOYEES_HEADING_1}      id=employee-heading-1
${EMPLOYEES_HEADING_1}      jquery:[id^=employee-heading-]:visible

${EMPLOYEES_FIRST}          jquery:input[id^=employees-][id*=-first-name]:visible

${EMPLOYEES_LAST_NAME}      jquery:input[id^=employees-][id*=-last-name]:visible

${EMPLOYEES_EMAIL_ADD}      jquery:input[id^=employees-][id*=-email]:visible

${EMPLOYEES_COLOR_PICKER}   jquery:.sp-replacer.sp-light:visible

${EMPLOYEES_COLOR_PICKER_PICK}   jquery:span[title="rgb(204, 0, 0)"]:visible

${EMPLOYEES_LOCATION}       jquery:input[id^=employees-][id*=-locations]

${EMPLOYEES_MAIN_IMAGE}     jquery:input[id^=employees-][id*=-main-image]

${EMPLOYEES_MAIN_IMAGE_CROPPER_BUT}     css=.employees-cropperjs-crop-btn

${EMPLOYEES_AVAILABILITY_Y}  jquery:.employees-availability[data-value="Y"]

${EMPLOYEES_AVAILABILITY_N}  jquery:.employees-availability[data-value="N"]

${EMPLOYEES_X_BUT}           jquery:.employees-delete

${EMPLOYEES_CONFIRM_DELETE_BUT}   jquery:.btn-confirm-delete-employees

${EMPLOYEES_CONFIRM_MODAL}   id=confirm-delete-modal

# Services tab

${SERVICE_ACCORDION_HEADER}  jquery:[data-parent="#services-accordion"]

${SERVICES_SERVICE_NAME}     jquery:input[id^=services-][id*=-service]

${SERVICES_SERVICE_PRICE}     jquery:input[id^=services-][id*=-price]

${SERVICES_PREP_TIME}         jquery:input[id^=services-][id*=-prep-time]

${SERVICES_DURATION}          jquery:input[id^=services-][id*=-duration]

${SERVICES_FINISH_TIME}       jquery:input[id^=services-][id*=-finish-time]

${SERVICES_MAIN_IMAGE}        jquery:input[id^=services-][id*=-main-image]

${SERVICES_TIME_PICK_MIN}     jquery:.timepicker-minute:visible

${SERVICES_TIME_SEL_MIN}      jquery:[data-action="selectMinute"]

${SERVICES_CROPPER_JS_CROP_BUT}   css=.services-cropperjs-crop-btn

${SERVICES_IMG_CANVAS}        jquery:img[id^=services-img-canvas-]

${SERVICES_CLIENT_LOCATION}   jquery:input[id^=services-][id*=-client-location]

${SERVICES_SHORT_DESCRIPTION}  jquery:[id^=services-][id*=-description]

${SERVICES_PROVIDERS}          jquery:input[id^=services-][id*=-providers]

${SERVICES_ADD_BUTTON}         id=services-add-more

${SERVICES_SERVICE_DELETE_X}   jquery:.services-delete

${SERVICES_SERVICE_DELETE_BUT}  jquery:.btn-confirm-delete-services

${SERVICES_CONFIRM_MODAL}       id=confirm-delete-modal

# Groups Tab

${GROUPS_MEETING_TERM}          id=account-group-meeting-term
${GROUPS_NAME}                  jquery:input[id^=groups-][id*=-name]
${GROUPS_PRICE}                 jquery:input[id^=groups-][id*=-price]

${GROUPS_PREP_TIME}             jquery:input[id^=groups-][id*=-prep-time]
${GROUPS_DURATION}              jquery:input[id^=groups-][id*=-duration]
${GROUPS_FINISH_TIME}           jquery:input[id^=groups-][id*=-finish-time]

${GROUPS_MIN_ATTENDEES}         jquery:input[id^=groups-][id*=-min-attendees]
${GROUPS_MAX_ATTENDEES}         jquery:input[id^=groups-][id*=-max-attendees]

${GROUPS_DESC}                  jquery:textarea[id^=groups-][id*=-description]
${GROUPS_MAIN_IMAGE}            jquery:input[id^=groups-][id*=-main-image]

${GROUPS_IMG_CANVAS}            jquery:[id^=group-img-canvas-]

${GROUPS_MAIN_IMAGE_CROPPER_BUT}     css=.groups-cropperjs-crop-btn

${GROUPS_PROVIDERS}             jquery:[id^=groups-][id*=-providers]

${GROUPS_ADD_MORE}              jquery:#groups-add-more

${GROUPS_HEADINGS}              jquery:[id^=group-heading-]

${GROUPS_DELETE_BUTTON}         jquery:.groups-delete

${GROUPS_DELETE_MODAL}          jquery:#confirm-delete-modal

${GROUPS_DELETE_CONFIRM}        jquery:.btn-confirm-delete-groups

# Resources Tab

${RESOURCES_NAME}               jquery:[id^=resources-][id*=-first-name]

${RESOURCES_SERVICES}           jquery:[id^=resources-][id*=-services]

${RESOURCES_GROUPS}             jquery:[id^=resources-][id*=-groups]

${RESOURCES_PIC_UPLOAD_FIELD}   jquery:#resources-main-image

${RESOURCES_PIC_UPLOAD_MODAL}   jquery:#resources-cropperjs-modal

${RESOURCES_PIC_UPLOAD_CROP_B}  jquery:.resources-cropperjs-crop-btn

${RESOURCES_PIC_UPLOAD_CANVAS}  jquery:[id^=resources-img-canvas-]

${RESOURCES_ADD_MORE}           jquery:#resources-add-more

${RESOURCES_HEADINGS}           jquery:[id^=resource-heading-]

${RESOURCES_DELETE_BUTTON}      jquery:.resources-delete

${RESOURCES_DELETE_MODAL}       jquery:#confirm-delete-modal

${RESOURCES_DELETE_CONFIRM}     jquery:.btn-confirm-delete-resources

# Payment/Invoice
${PAYMENT_STRIPE_TAB}           jquery:#stripe-tab
${PAYMENT_STRIPE_PANEL}         jquery:#stripe

${PAYMENT_AUTHNET_TAB}          jquery:#authorize-net-tab
${PAYMENT_AUTHNET_PANEL}        jquery:#authorize-net

${PAYMENT_BRAINTHREE_TAB}       jquery:#braintree-paypal-tab
${PAYMENT_BRAINTHREE_PANEL}     jquery:#braintree-paypal

${PAYMENT_PAYPAL_TAB}           jquery:#paypal-checkout-tab
${PAYMENT_PAYPAL_PANEL}         jquery:#paypal-checkout

${PAYMENT_PAYPAL_EMAIL}         jquery:#invoices-payments-paypal-email

${PAYMENT_PAYMENTS_CURRENCY}    jquery:#invoices-payments-currency

${PAYMENT_PAYMENTS_BCP_YES}     jquery:[data-name='invoicesPayments[BookingCollectPayment]'][data-value='req']
${PAYMENT_PAYMENTS_BCP_NO}      jquery:[data-name='invoicesPayments[BookingCollectPayment]'][data-value='off']

${PAYMENT_PAYMENTS_ACIA_YES}    jquery:[data-name='invoicesPayments[AutoCreateInvAppt]'][data-value='on']
${PAYMENT_PAYMENTS_ACIA_NO}     jquery:[data-name='invoicesPayments[AutoCreateInvAppt]'][data-value='off']

${PAYMENT_PAYMENTS_CTS_YES}     jquery:[data-name='invoicesPayments[ChargeTaxServices]'][data-value='on']
${PAYMENT_PAYMENTS_CTS_NO}      jquery:[data-name='invoicesPayments[ChargeTaxServices]'][data-value='off']

${PAYMENT_PAYMENTS_TAXRATE}     jquery:#invoices-payments-default-tax-rate

# Notifications
${NOTIFICATION_EMAIL_BUTTON}    jquery:[data-target="#email-modal"]
${NOTIFICATION_EMAIL_MODAL}     jquery:#email-modal
${NOTIFICATION_EMAIL_MODAL_TO_CLIENT}       jquery:#notifications-app-email-notify-c
${NOTIFICATION_EMAIL_MODAL_TO_NEW_STAFF}        jquery:#notifications-app-email-notify-p

${NOTIFICATION_EMAIL_BUTTON_CLIENT_LABEL}       jquery:#email-to-client
${NOTIFICATION_EMAIL_BUTTON_NEW_STAFF_LABEL}        jquery:#email-to-provider

${NOTIFICATION_SMS_BUTTON}      jquery:[data-target="#text-message-modal"]
${NOTIFICATION_SMS_MODAL}       jquery:#text-message-modal
${NOTIFICATION_SMS_MODAL_TO_CLIENT}     jquery:#notifications-app-txt-notify-c
${NOTIFICATION_SMS_MODAL_TO_NEW_STAFF}      jquery:#notifications-app-txt-notify-p

${NOTIFICATION_SMS_BUTTON_CLIENT_LABEL}     jquery:#text-to-client
${NOTIFICATION_SMS_BUTTON_NEW_STAFF_LABEL}      jquery:#text-to-provider

${NOTIFICATION_CLIENT_REMINDER_SETTINGS}        jquery:#client-reminder-settings-heading
${NOTIFICATION_CLIENT_REMINDER_COLLAPSE}        jquery:#client-reminder-settings-collapse

${NOTIFICATION_CLIENT_REMINDER_EMAIL}           jquery:#notifications-app-rem-email-c
${NOTIFICATION_CLIENT_REMINDER_SMS}             jquery:#notifications-app-rem-text-c

${NOTIFICATION_CLIENT_REMINDER_EMAIL_REM}       jquery:#notifications-app-email-rem1-c
${NOTIFICATION_CLIENT_REMINDER_SMS_REM}         jquery:#notifications-app-txt-rem1-c

${NOTIFICATION_PROVIDER_REMINDER_SETTINGS}      jquery:#provider-reminder-settings-heading
${NOTIFICATION_PROVIDER_REMINDER_COLLAPSE}      jquery:#provider-reminder-settings-collapse

${NOTIFICATION_PROVIDER_REMINDER_EMAIL}         jquery:#notifications-app-rem-email-p
${NOTIFICATION_PROVIDER_REMINDER_SMS}           jquery:#notifications-app-rem-text-p

${NOTIFICATION_PROVIDER_REMINDER_EMAIL_REM}     jquery:#notifications-app-email-rem1-p
${NOTIFICATION_PROVIDER_REMINDER_SMS_REM}       jquery:#notifications-app-txt-rem1-p

# Booking Preference
${BOOKING_PREF_LET_CLIENT_CANCEL_YES}           jquery:[data-name='bookingPreferences[BookingAllowClientCancel]'][data-value='1']
${BOOKING_PREF_LET_CLIENT_CANCEL_NO}            jquery:[data-name='bookingPreferences[BookingAllowClientCancel]'][data-value='0']

${BOOKING_PREF_LET_CLIENT_CANCEL}               jquery:#booking-preferences-booking-cancel-minute-buffer

${BOOKING_PREF_LET_CLIENT_RESCED_YES}           jquery:[data-name='bookingPreferences[BookingAllowClientReschedule]'][data-value='1']
${BOOKING_PREF_LET_CLIENT_RESCED_NO}            jquery:[data-name='bookingPreferences[BookingAllowClientReschedule]'][data-value='0']

${BOOKING_PREF_LET_CLIENT_RESCED}               jquery:#booking-preferences-booking-reschedule-minute-buffer

${BOOKING_PREF_MULTIPLE_BOOKING_YES}            jquery:[data-name='bookingPreferences[BookingAllowCarting]'][data-value='1']
${BOOKING_PREF_MULTIPLE_BOOKING_NO}             jquery:[data-name='bookingPreferences[BookingAllowCarting]'][data-value='0']

${BOOKING_PREF_TIMZONE}                         jquery:#booking-preferences-booking-time-zone-default

${BOOKING_INFO_FIELDS}                          jquery:[id^='booking-preferences-booking-widget-form-fields-']:not([disabled='dsiabled'])

${BOOKING_INFO_FIELDS_ADDONS_YES}               jquery:[data-name='bookingPreferences[bookingWidget][show_add_ons]'][data-value='1']
${BOOKING_INFO_FIELDS_ADDONS_NO}                jquery:[data-name='bookingPreferences[bookingWidget][show_add_ons]'][data-value='0']

${BOOKING_INFO_FIELDS_CUSTOM_YES}               jquery:[data-name='bookingPreferences[bookingWidget][show_custom_forms]'][data-value='1']
${BOOKING_INFO_FIELDS_CUSTOM_NO}                jquery:[data-name='bookingPreferences[bookingWidget][show_custom_forms]'][data-value='0']

${BOOKING_INFO_FIELDS_ADDONS_TABLE}             jquery:.add-ons-table

${BOOKING_INFO_FIELDS_CUSTOM_TABLE}             jquery:.custom-forms-table

${BOOKING_INFO_FIELDS_AO_ADD_BUTTON}            jquery:#add-on-add

${BOOKING_INFO_FIELDS_CT_ADD_BUTTON}            jquery:#custom-form-add

${BOOKING_INFO_FIELDS_AO_MODAL}                 jquery:#add-on-modal

${BOOKING_INFO_FIELDS_CT_MODAL}                 jquery:#custom-form-modal

${BOOKING_INFO_FIELDS_AO_MODAL_ACTIVE}          jquery:#add-on-active

${BOOKING_INFO_FIELDS_AO_MODAL_INVENTORY}       jquery:#add-on-inventory

${BOOKING_INFO_FIELDS_AO_MODAL_TAX_ACTIVE}      jquery:#add-on-tax-active

${BOOKING_INFO_FIELDS_AO_MODAL_NAME}            jquery:#add-on-name

${BOOKING_INFO_FIELDS_AO_MODAL_PRICE}           jquery:#add-on-price

${BOOKING_INFO_FIELDS_AO_MODAL_NUM_AVAIL}       jquery:#add-on-number-available

${BOOKING_INFO_FIELDS_AO_MODAL_TAX}             jquery:#add-on-tax

${BOOKING_INFO_FIELDS_AO_MODAL_TITLE}           jquery:#add-on-add-on-title

${BOOKING_INFO_FIELDS_AO_MODAL_SHORT_DESC}      jquery:#add-on-short-desc

${BOOKING_INFO_FIELDS_AO_MODAL_IMAGE}           jquery:#add-on-image

${BOOKING_INFO_FIELDS_AO_MODAL_CJS_MODAL}       jquery:#add-on-cropperjs-modal

${BOOKING_INFO_FIELDS_AO_MODAL_CJS_MODALOK_BUT}     jquery:.add-on-cropperjs-crop-btn

${BOOKING_INFO_FIELDS_AO_MODAL_CANVAS}          jquery:#add-on-img-canvas

${BOOKING_INFO_FIELDS_AO_MODAL_LONG_DESC}       jquery:.note-codable

${BOOKING_INFO_FIELDS_AO_SHOW_BOOKING_WID_SW}   jquery:#add-on-show-booking-widget

${BOOKING_INFO_FIELDS_AO_SERVICES}              jquery:input[id^='add-on-services']

${BOOKING_INFO_FIELDS_AO_GROUP_WID_SW}          jquery:#add-on-show-group-widget

${BOOKING_INFO_FIELDS_AO_GROUPS}                jquery:input[id^='add-on-groups-']

${BOOKING_INFO_FIELDS_AO_MODAL_SAVE}            ${BOOKING_INFO_FIELDS_AO_MODAL} .save-add-on-btn

${BOOKING_INFO_FIELDS_AO_1ST_ADD_PROD_NAME}     jquery:.add-ons-table table tbody tr td:eq(0)

${BOOKING_INFO_FIELDS_CT_FORM_TITLE}            jquery:#custom-form-title

${BOOKING_INFO_FIELDS_CT_FORM_DESC}             jquery:.note-editable

${BOOKING_INFO_FIELDS_CT_FORM_HIDE_TITLE}       jquery:#custom-form-hide-title

${BOOKING_INFO_FIELDS_CT_FORM_HIDE_DESC}        jquery:#custom-form-hide-description

${BOOKING_INFO_FIELDS_CT_FORM_HIDE_FR_WIDGET}   jquery:#custom-form-hide

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS}        jquery:#custom-form-questions

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_FIELDS}     jquery:#main-field-options

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_CHECKBOX_FIELDS}       jquery:[data-type="checkboxes"]

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ITEM}   jquery:[id^='question-heading-']

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_REQUIRED}   jquery:[id^='required-']

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_TEXT}   jquery:.input-question-text

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_ANSWERS}    jquery:.input-answer-choices

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SUBFO}  jquery:#sub-field-options

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SUBQUE}     jquery:.sub-questions

${BOOKING_INFO_FIELDS_CT_FORM_QUESTIONS_SAVE}   jquery:.save-custom-form-btn

${BOOKING_INFO_FIELDS_CT_1ST_FIELD_NAME}        jquery:.custom-forms-table table tbody tr td:eq(0)

${BOOKING_INFO_FIELDS_FREQUENCY}                jquery:#booking-preferences-booking-interval

${BOOKING_INFO_FIELDS_BUFFER_YES}               jquery:[data-name='bookingPreferences[BufferAppointmentsCantOffered]'][data-value='Y']

${BOOKING_INFO_FIELDS_BUFFER_NO}                jquery:[data-name='bookingPreferences[BufferAppointmentsCantOffered]'][data-value='N']

${BOOKING_INFO_FIELDS_MIN_BUFFER}               jquery:#booking-preferences-booking-minute-buffer

${BOOKING_INFO_FIELDS_EXCLUDE_SERVICE_PROVIDERS}        jquery:[id^=booking-preferences-][id*=-providers]

${BOOKING_INFO_FIELDS_EXCLUDE_SERVICES}         jquery:[id^=booking-preferences-][id*=-services]

# Calendar Sync
${CALENDAR_SYNC_MAIN}                           jquery:#calendar-sync-accordion

${CALENDAR_SYNC_MAIN_ADD_CALENDAR}              ${CALENDAR_SYNC_MAIN} .add-calendar-btn

${CALENDAR_SYNC_MAIN_MODAL_DIALOG}              jquery:#add-calendar-modal .modal-dialog

${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_EMAIL}       jquery:#add-calendar-email

${CALENDAR_SYNC_MAIN_MODAL_DIALOG_ADD_CALENDAR_SAVE_BUT}        jquery:.save-calendar-email-address-btn

${CALENDAR_SYNC_MAIN_EMAILS}                    jquery:[id^='calendar-sync-email-list-'] .calendar-sync-email





# Visible Next Button
${NEXT_STEP_BUTTON}             jquery:a:contains('Next Step'):visible

${FINISH_BUTTON}                jquery:a:contains('Finish'):visible

                             

*** Keywords ***
#*************** General Test Cases ***************
Launch Gigabook website
    # Action
    # Go To   ${MAIN_URL}
    # Navigation is from "ROBOT SET-UP"

    # Verify
    # User should be redirected to https://gigabook.com/
    Location Should Be      ${MAIN_URL}
    Comment                 User is redirected to 'https://gigabook.com/'

Confirm Dashboard Page
    Location Should Be      ${DASHBOARD_URL}
    Comment                 Sign up form page was displayed


Go to Welcome Page and Confirm
    Go To	                ${WELCOME_URL}
    Location Should Be      ${WELCOME_URL}
    Comment                 Welcome Page (Smart Start) was displayed
#*************** General Test Cases ***************
