*** Settings ***
Documentation     A resource file with reusable keywords and variables for smart-start page tests.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../../../global_resource/resource.robot
Resource          ./actions.resource
Resource          ./expectations.resource
Resource          ./helpers.resource

*** Variables ***
${PANELS_JUMP_TO}           jquery:#panels-jumpto
${FORM_WIDGET_PROVIDER}     jquery:#form_widget_provider
${ALLOW_CARTING_SW_LABEL}   jquery:[for='BookingAllowCarting']
${ALLOW_CARTING_SW_ID}      jquery:.bootstrap-switch-id-BookingAllowCarting
${ALLOW_CLIENT_RESCED_LABEL}    jquery:[for="BookingAllowClientReschedule"]
${ALLOW_CLIENT_RESCED_ID}    jquery:.bootstrap-switch-id-BookingAllowClientReschedule
${RESCHEDULE_MIN_BUF}       jquery:#BookingRescheduleMinuteBuffer
${BW_SAVE_BUTTON}           jquery:[ttip='Save your changes']
${BW_SHOW_EMB_BUTTON}       jquery:[name='show_embed']
${BW_EMBED_MODAL}           jquery:#EmbedModal
${WIDGET_URL_FIELD}         jquery:#widget_url
${URL_TO_SHARE_BUT}         jquery:#btn-url
${COPY_URL_BUT}             jquery:#btn-widget-copy-url
${CONT_TO_COUT_BUT}         jquery:._btn-panel-next:visible:contains('Continue To Checkout')

${FIRST_NAME_FIELD}         id=FirstNameID
${LAST_NAME_FIELD}          id=LastNameID
${PHONE_NUM_FIELD}          id=bPhoneID
${EMAIL_ADD_FIELD}          id=EmailID
${CLIENT_PW_FIELD}          id=ClientPassword
${NOTES_FIELD}              id=NotesID

${WIDGET_SUBMIT}            jquery:.btn-submit-form:visible:contains('Submit')

${RESCHEDULE_OR_NEW}        id=submitButton

${LISTING_COLS}             jquery:.listing-cols:visible

${LISTING_LOADER}           jquery:.listing-part .loader

${ALERT_SUCCESS}            jquery:.alert.alert-success

${POWERED_BY_LOGO}          jquery:.powered-by-logo

${BUSSINESS_LIST}           jquery:.business-list