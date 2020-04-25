*** Settings ***
Resource    ../resources/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
Login no app
    Acesso a tela de login
    Submeto minhas credencias "tony@stark.com" e "pass123"
    Devo ver "Tony Stark" na tela minha conta

Senha inválida
    [Template]  Tentar logar
    tony@stark.com      123abc     Usuário e/ou senha inválidos.

Usuário não existe
    [Template]  Tentar logar
    404@gmail.com      123abc      Usuário e/ou senha inválidos.
