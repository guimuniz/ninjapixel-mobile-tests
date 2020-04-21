

*** Keywords ***
## Helpers
Acessar Home
    Wait Until Page Contains Element    ${MENU_LIST}
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[0]

Acessar Lista de Desejesos
    Wait Until Page Contains Element    ${MENU_LIST}
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[1]

Acessa Carrinho
    Wait Until Page Contains Element    ${MENU_LIST}
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[2]

Acessa Sobre
    Wait Until Page Contains Element    ${MENU_LIST}
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[3]

## Android components
Devo ver um popup com a mensagem:
    [Arguments]     ${expect_message}

    Wait Until Page Contains Element        ${POPUP}
    Element Text Should Be                  ${POPUP}       ${expect_message}

