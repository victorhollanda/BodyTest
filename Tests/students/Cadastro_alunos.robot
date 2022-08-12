***Settings***
Documentation       Cadastro de alunos
Library             Browser
Resource            ${execdir}/resources/base.robot

Suite Setup         Start browser session and login with admin

***Test Cases***
Cadastrar aluno
    &{student}      create dictionary       nome=victor holanda     email=victor@email.com      idade=22        peso=82     altura=1.75
    Remove student                  ${student.email}
    Go to student form
    New student                      ${student}
    toaster text should be          Aluno cadastrado com sucesso.

Não deve permitir email duplicado
    &{student}      create dictionary       nome=victor holanda     email=victor@email.com      idade=22        peso=82     altura=1.75
    insert student                 ${student}
    Go to student form
    New student                      ${student}
    toaster text should be          Email já existe no sistema.

Todos os campos devem ser obrigatorios
    @{alertas_esperados}    set variable        nome é obrigatório      O e-mail é obrigatório      idade é obrigatória     o peso é obrigatório        a altura é obrigatória

    Go to student form
    Submit student

    FOR     ${alerta}       IN      @{alertas_esperados}
        Alert text should be        ${alerta}
    END

Verificar campos de tipo numerico
    
    Go to student form
    field age should be number
    field weight should be number
    field feet_tall should be number

Verificar campo de tipo email
    [tags]      temp
    Go to student form
    Field email should be email

Remover Aluno
    &{student}      Create dictionary   nome=victor holanda    email=victor@email.com      idade=22        peso=82     altura=1.75
    Insert student          ${student}
    Go to student
    Delete student by email     victor@email.com
    Click in button             SIM, pode apagar!
    toaster text should be      Aluno removido com sucesso.



    
