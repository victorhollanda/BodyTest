***Settings***
Documentation       Arquivo base para testes

Library             libs/FuncLibrary.py
Library             Browser
Resource            actions/auth.robot
Resource            actions/student.robot
Resource            actions/components.robot
Resource            actions/nav.robot


***Keywords***
Start browser session and login with admin
    New Browser     Chromium        false
    New Page        about:blank
    Go to login Page
    login with      admin@bodytest.com      pwd123


Start browser session
    New Browser     Chromium        false
    New Page        about:blank

Clear LS and take ScreenShot
    take ScreenShot
    Local storage clear

Get Json
    [Arguments]     ${file_name}
    ${file}=        Get file        ${EXECDIR}/resources/fixtures/${file_name}
    ${json_object}      Evaluate        json.loads($file)       json
    [Return]        ${json_object}