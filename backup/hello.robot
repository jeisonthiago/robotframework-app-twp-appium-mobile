*** Settings ***
Library    hello.py

# SemiCode

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=      Hello Robot     Jeison Thiago    
    Should Be Equal    ${resultado}    Olá, Jeison Thiago.