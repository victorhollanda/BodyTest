***Settings***
Documentation       Açoes para cadastro de aluno

***Keywords***

Submit student
    Click                   //button[@color="#4DC097"]

New student
    [Arguments]     ${student}

    fill text               //input[@name="name"]           ${student.nome}
    fill text               //input[@name="email"]          ${student.email}
    fill text               //input[@name="age"]            ${student.idade}
    fill text               //input[@name="weight"]         ${student.peso}
    fill text               //input[@name="feet_tall"]      ${student.altura}

    Submit student

Search student by name
    [Arguments]     ${name}
    fill text               //input[@placeholder="Buscar aluno"]        ${name}

Delete student by email
    [Arguments]     ${email}
    
    Click           //td[.="${email}"]/..//button

Click in button
    [Arguments]     ${button_text}
    Click           //button[.="${button_text}"]
Student name should be visible
    [Arguments]     ${student_name}
    wait for elements state      //td[.="${student_name}"]      visible

