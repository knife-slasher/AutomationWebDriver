*** Settings ***
Documentation     A resource file with reusable keywords and variables for service page.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot
Resource          ./service_page/service_page_actions.robot
Resource          ./service_page/service_page_expectations.robot
Resource          ./service_page/service_page_helpers.robot

*** Variables ***
# Main Page Elements
${NEW_SERVICE_BUTTON}    css:.open-serviceAdd
${NEW_SERVICE_BUTTON}    xpath=//*[@id="search-service"]/a
${SEARCH_INPUT_FIELD}    id=keyword
${LIST_ICON}      css:#search-service > div.bar-buttons > a.open-serviceResort.walkthrough-element.btn.btn-text > span
${DELETE_SERVICE_BUTTON}    css:#search-service > div.bar-buttons > a.show-deleted-btn.walkthrough-element.btn.btn-text > span.fa.fa-trash.btn-un-delete
${COLUMN_NAME_IMAGE}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(2) > a > strong
${COLUMN_NAME_FULLNAME}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(3) > a > strong
${COLUMN_NAME_PROVIDER}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(4) > strong
${COLUMN_NAME_DESC}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(5) > a > strong
${COLUMN_NAME_PRICE}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(6) > a > strong
${COLUMN_NAME_DURATION}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(7) > a > strong
${COLUMN_NAME_PREPT}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(8) > a > strong
${COLUMN_NAME_FINISHT}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(9) > a > strong
${COLUMN_NAME_HIDDEN}    css:#wrap > div.padtop.clearfix > div > div > div > div.tabular-displays > form > div > div > div > table > thead > tr > th:nth-child(10) > a > strong
${INFO_BOX}       css:#search-service > div.popover.fade.bottom.in > div.popover-inner
${SERVICES_LIST}    css:.tbl_result_
${FIRST_SERVICE}    css:.tbl_result_:nth-child(1) > td:nth-child(3) > a
${FIRST_SERVICE_H_STATUS}    css:.tbl_result_:nth-child(1) > td:nth-child(10) > a
${FIRST_SERVICE_PRICE}    css:.tbl_result_:nth-child(1) > td:nth-child(5) > a
# Modals
${ADD_SERVICE_MODAL}    id=serviceAdd
# Add Service Modal Elements
${ADD_SERVICE_MODAL_LABEL}    css:#serviceAddFrm > div.modal-header > div > div > div:nth-child(1) > h3 > font
${ADD_SERVICE_MODAL_SERVICE_NAME_FIELD}    id=ServiceNameID
${ADD_SERVICE_MODAL_PRICE_FIELD}    id=PriceID
${ADD_SERVICE_MODAL_PREP_TIME_FIELD}    id=SerPrepTime
${ADD_SERVICE_MODAL_DURATION_FIELD}    id=SerDuration
${ADD_SERVICE_MODAL_FIN_TIME_FIELD}    id=SerFinishTime
${ADD_SERVICE_MODAL_PROVIDERS}    id=ProvArea
${ADD_SERVICE_CHOOSE_IMAGE_BUTTON}    css:.upload-file-buttons
${ADD_SERVICE_CHOOSE_IMAGE_UPLOAD_BUTTON}    xpath://*[@id="ServiceImageUploadAreaID"]/span[2]/span/input[1]
${ADD_SERVICE_SHORT_DESCRIPTION_FIELD}    id=DescriptionID
${ADD_SERVICE_LONG_HTML_DESCRIPTION_FIELD}    css:#service-add-form > div:nth-child(4) > div > div > div > div
${ADD_SERVICE_HIDDEN_SWITCH}    css:#service-add-form > div:nth-child(1) > div.col-lg-8.col-md-8.col-sm-12.col-xs-12 > div:nth-child(3) > div > div > div:nth-child(1) > div > div
${ADD_SERVICE_SERVICE_PROVIDERS}    jquery:a[id^='prov_link']:visible
${ADD_SERVICE_MODAL_ADD_BUTTON}    css:.doOneClick
${EDIT_SERVICE_MODAL_HIDDEN_SWITCH}    css:label[for='HideServiceUPDATE']
${EDIT_SERVICE_MODAL_PRICE}    css:#PriceIDUPDATE
${EDIT_DELETE_SERVICE_BUTTON}    css:#serviceEditFrm > div.modal-header > div > div > div:nth-child(2) > a > span
${EDIT_DELETE_CONFIRM_BUTTON}    css:#conTracDelfrm > div.modal-header > div > div > div:nth-child(2) > button.btn.btn-danger.btn-small > span:nth-child(2)
${EDIT_IMAGE_PREVIEW}    css:#imagePreview
${EDIT_SERVICE_NAME}    css:#ServiceNameIDUPDATE
# Crop Image Modal Elements
${CROP_IMAGE_MODAL_CROP_BUTTON}    css:#bootstrap-modal > div > div > div.modal-header > div > div > div:nth-child(2) > button.btn.btn-primary.btn-small > span:nth-child(3)

*** Keywords ***
Navigate to https://gigabook.com/services
    #*************** General Test Cases ***************
    # Action
    Go To    ${SERVICE_URL}
    # Verify
    # User should be redirected to https://gigabook.com/services
    Location Should Be    ${SERVICE_URL}
    Comment    User is redirected to 'https://gigabook.com/services'
    #*************** General Test Cases ***************
