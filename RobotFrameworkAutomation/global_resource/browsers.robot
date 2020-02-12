*** Settings ***
Documentation     A resource file with reusable browser keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

*** Variables ***
${BROWSER_CHROME}    Chrome
${BROWSER_FIREFOX}    Firefox
${BROWSER_EDGE}    edge
${BROWSER_IE}     ie
${BROWSER_SAFARI}    safari

*** Keywords ***
Open Test Browser
    [Arguments]    ${ARGS}
    run keyword if    '${ARGS.test_mode}' == 'grid'    Open Grid Test    ${ARGS.main_url}    ${CLI_BROWSER}    ${CLI_OS}    ${ARGS.name}
    ...    ${CLI_BUILD}
    ...    ELSE    LOG    Skipped Grid
    run keyword if    '${ARGS.test_mode}' == 'cbt'    Open Cbt Test    ${ARGS.main_url}    ${CLI_BROWSER}
    ...    ELSE    LOG    Skipped CBT
    run keyword if    '${ARGS.test_mode}' == 'local'    Open Chrome Browser    ${ARGS.main_url}
    ...    ELSE    LOG    Skipped Local

Open Chrome Browser
    [Arguments]    ${URL}
    ChromeHeadlessSetUP
    Comment    Open Browser    ${URL}    ${BROWSER_CHROME}
    Go To    ${URL}

Open Firefox Browser
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER_FIREFOX}

Open IE Browser
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER_IE}

Open Edge Browser
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER_EDGE}

Open Grid Test
    [Arguments]    ${URL}    ${BROWSER}    ${PLATFORM}    ${NAME}    ${BUILD}
    Open Browser    ${URL}    ${BROWSER}    remote_url=${GRID_URL}    desired_capabilities=platform: ${PLATFORM}, name: ${NAME}, build: ${BUILD}

Open Cbt Test
    [Arguments]    ${BROWSER}    ${VERSION}    ${OS}    ${RESOLUTION}    ${TEST_NAME}
    Open Browser    url=${MAIN_URL}    browser=${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=name:${TEST_NAME},browserName:${BROWSER}, version: ${VERSION}, platform:${OS}, screenResolution:${RESOLUTION}, record_video:${Video}

ChromeHeadlessSetUP
    ${c_opts} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${c_opts}    add_argument    headless
    Call Method    ${c_opts}    add_argument    disable-gpu
    Call Method    ${c_opts}    add_argument    no-sandbox
    Call Method    ${c_opts}    add_argument    window-size\=1600, 1268
    Create Webdriver    Chrome    crm_alias    chrome_options=${c_opts}
