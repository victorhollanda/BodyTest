***Settings***
Documentation       Componentes genericos

***Keywords***

toaster text should be
    [Arguments]     ${expect_text}
    wait for elements state      css=.Toastify__toast-body >> text=${expect_text}     visible     5s

Alert text should be
    [Arguments]     ${expect_text}
    wait for elements state     css=form span >> text=${expect_text}      visible     5s

Field ${field} should be ${type}
    ${attr}     Get attribute        //input[@name="${field}"]    type
    should be equal     ${attr}     ${type}
