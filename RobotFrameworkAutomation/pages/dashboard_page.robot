*** Settings ***
Documentation     A resource file with reusable keywords and variables for smart-start page tests.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          ../global_resource/resource.robot
Resource          ./dahsboard_page/dahsboard_page_actions.resource
Resource          ./dahsboard_page/dahsboard_page_expectations.resource
Resource          ./dahsboard_page/dahsboard_page_helpers.resource
