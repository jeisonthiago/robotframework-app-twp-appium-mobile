*** Settings ***

Resource    ../resources/base.robot

# Executa a keywords antes de cada testecase
Test Setup       Open Session
# Executa a keywords depois de cada testecase
Test Teardown    Close Session

*** Variables ***
${TOOLBAER_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs 
    Open Nav
    
    Click Text                        DIALOGS      
    Wait Until Element Is Visible     ${TOOLBAER_TITLE}    
    Element Text Should Be            ${TOOLBAER_TITLE}    DIALOGS

Deve acessar a tela de formulários 
    Open Nav    

    Click Text                        FORMS      
    Wait Until Element Is Visible     ${TOOLBAER_TITLE}    
    Element Text Should Be            ${TOOLBAER_TITLE}    FORMS

Deve acessar a tela de vingadores
    Open Nav  

    Click Text                        AVENGERS      
    Wait Until Element Is Visible     ${TOOLBAER_TITLE}    
    Element Text Should Be            ${TOOLBAER_TITLE}    AVENGERS  