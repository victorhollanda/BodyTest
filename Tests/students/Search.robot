***Settings***
Documentation       Testes da barra de pesquisa
Library             OperatingSystem

Resource            ${execdir}/resources/base.robot

Suite Setup         Start browser session and login with admin

***Test Cases***

Pesquisa com termo exato
    ${json}         get Json            students_search.json
    ${students}     Set variable        ${json['students']}
    &{david}        Set variable        ${students[0]}
    insert student                      ${david}
    Go to student
    Search student by name              ${david['nome']}
    Student name should be visible      ${david['nome']}

Pesquisa com um unico termo
    ${json}     Get Json    Students_search.json
    ${students}     set variable        ${json['students']}

    FOR     ${student}  IN  @{students}
        Insert student      ${student}
    END

    Go to student
    Search student by name              David

    FOR     ${student}  IN  @{students}
        Student name should be visible      ${student['nome']}
    END

    FOR     ${student}  IN  @{students}
        remove student      ${student['email']}
    END


    
    