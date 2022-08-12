***Settings***
Documentation       Açoes de autorização


***Keywords***

Go to login Page
    Go to           https://bodytest-web-vh.herokuapp.com/


User name should be
    [Arguments]     ${user_name}
    Get Text        css=aside strong            should be     ${user_name}

login with
    [Arguments]     ${email}    ${pass}

    Fill Text       css=input[name=email]       ${email}
    Fill Text       css=input[name=password]    ${pass}
    Click           text=entrar


