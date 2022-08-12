***Settings***
Documentation       Açoes de navegação

***Keywords***
Go to student
    Click                       //li/a[@href="/alunos"]

Go to student form
    go to student
    wait for elements state     //div/a[@href="/alunos/new"]      visible
    Click                       //div/a[@href="/alunos/new"]