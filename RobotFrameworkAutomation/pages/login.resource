*** Settings ***
Documentation     A resource file with reusable keywords and variables for smart-start page tests.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot
Resource          ./login/login_actions.resource
Resource          ./login/login_expectations.resource
Resource          ./login/login_helpers.resource

*** Variables ***
${ROOT_LOGIN_LINK}    jquery:[data-target="#ModalLogin"]
${ROOT_LOGIN_BUTTON}    css:#ModalLogin button.btn-login
${ROOT_SIGN_UP_NOW_BUTTON}    jquery:#ModalLogin input[type=button]
${ROOT_FREE_14_DAY_TRIAL_BUTTON}    linkText=Free 14 Day Trial
${ROOT_LOGIN_MODAL}    id=ModalLogin
${ROOT_EMAIL_FIELD}    jquery:input[name="EmailAdd"]
${ROOT_PASSW_FIELD}    jquery:input[name="Password"]
${FREE_TRIAL_BUTTON}    css=.free-trial-container a
${SIGNUP_MAIN_FORM}    jquery:#form_step_begin
${SIGNUP_MAIN_FORM_BUSS_NAME}    jquery:#BusinessNameID
${SIGNUP_MAIN_FORM_F_NAME}    jquery:#FirstNameID
${SIGNUP_MAIN_FORM_L_NAME}    jquery:#LastNameID
${SIGNUP_MAIN_FORM_EMAIL}    jquery:#EmailAddID
${SIGNUP_MAIN_FORM_CONTACT}    jquery:#ContactNoID
${SIGNUP_MAIN_FORM_PASS1}    jquery:#PasswordID
${SIGNUP_MAIN_FORM_PASS2}    jquery:#PasswordConfirmID
${SIGNUP_MAIN_FORM_AGREE_SWTICH}    css=#form_step_begin .bootstrap-switch-label
${SIGNUP_MAIN_FORM_CREATE_ACCOUNT_BUTTON}    xpath=(//button[@type='button'])[3]
${SIGNUP_MAIN_FORM_RESET_BUTTON}    jquery:.glyphicon-ban-circle
${SIGNUP_MAIN_FORM_TOC_LINK}    jquery:[href="#TermsModal"]
${SIGNUP_MAIN_FORM_TOC_MODAL}    jquery:#TermsModal
${DASHBOARD_LOGO_IMG}    css:.logo.dashlogo
# Smart Start
${QUICK_TOUR_BUTTON}    jquery:.wistia_click_to_play:has(.fa-play-circle)
${ACCOUNT_SETUP_BUTTON}    jquery:.btn-success:has(.fa-user-circle)
${GIGA_TIPS_BUTTON}    jquery:.wistia_click_to_play:has(.fa-info-circle)
