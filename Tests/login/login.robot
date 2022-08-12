***Settings***
Documentation       suite de testes de login do administador
Library             Browser
Resource            ${execdir}/resources/base.robot

Suite Setup         Start browser session

***Test Cases***
Login do administador
    [Tags]      Administrador
    Go to login Page
    login with              admin@bodytest.com          pwd123
    User name should be     Administrador

    [Teardown]  Clear LS and take ScreenShot

Login com senha incorreta
    [Tags]      Temp
    Go to login Page
    login with              admin@bodytest.com          abc123
    toaster text should be  Usuário e/ou senha inválidos.

Login com email incorreto
    [Tags]      Temp
    Go to login Page
    login with              admin#bodytest.com          pwd123
    Alert text should be    Informe um e-mail válido

Login com email invalido
    [Tags]      Temp
    Go to login Page
    login with              invalido@bodytest.com          pwd123
    toaster text should be  Usuário e/ou senha inválidos.

Login com senha nao informada
    [Tags]      Temp
    Go to login Page
    login with              admin@bodytest.com          ${empty}
    Alert text should be    A senha é obrigatória

Login com email nao informado
    [Tags]      Temp
    Go to login Page
    login with              ${empty}                    pwd123
    Alert text should be    O e-mail é obrigatório

Login sem informar email nem senha
    [Tags]      Temp
    Go to login Page
    login with              ${empty}                    ${empty}
    Alert text should be    O e-mail é obrigatório
    Alert text should be    A senha é obrigatória
    

