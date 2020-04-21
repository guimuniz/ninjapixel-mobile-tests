

*** Keywords ***
Faço login com as credenciais "${email}" e "${pass}"
    Clean Cart    ${email}

    login.Acesso a tela de login
    login.Submeto minhas credencias "${email}" e "${pass}"

Acesso a categoria "${category}"
    ${target}=    Convert To Uppercase    ${category}

    Wait Until Page Contains    ${target}
    Click Text                  ${target}

Escolho o produto "${product}"
    Wait Until Page Contains    ${product}
    Click Text                  ${product}
    Set Test Variable           ${product}

Adiciono este item ao carrinho
    Wait Until Page Contains    ${product}
    Click Text                  ADICIONAR AO CARRINHO

Tenho o seguinte produto no meu carrinho:
    [Arguments]         ${product}      ${category}

    Acesso a categoria "${category}"
    Escolho o produto "${product}"
    Wait Until Page Contains Element    ${PRODUCT_PRICE}
    ${get_price}=   Get Element Attribute   ${PRODUCT_PRICE}   text
    Set Test Variable   ${product_price_text}   ${get_price}
    Adiciono este item ao carrinho

    Wait Until Page Contains Element    ${POPUP_OK}
    Click Element                       ${POPUP_OK}
    Wait Until Page Does Not Contain Element    ${POPUP_OK}

    Go Back
    Wait Until Page Contains        ${product}
    Go Back

    components.Acessa Carrinho
    Click Element                   ${REFRESH_CART}

Finalizo a compra com Paypal
    Wait Until Page Does Not Contain Element    ${PROGRESS_BAR}
    Wait Until Page Contains Element            ${BT_CHECKOUT}
    Click Element                               ${BT_CHECKOUT}
    Faço login no PayPal
    Confirmo a compra

Faço login no PayPal
    Wait Until Page Contains Element    ${INPUT_PAYPAL_EMAIL}
    Input Text                          ${INPUT_PAYPAL_EMAIL}   test@qaninja.io
    Input Text                          ${INPUT_PAYPAL_PASS}    qaninja123456
    Click Element                       ${BT_PAYPAL_LOGIN}
    Wait Until Page Contains Element    ${BT_PAY}

Confirmo a compra
    Confirmo o valor da compra  ${PURCHASE_VALUE}
    Click Element               ${BT_PAY}
    Devo ver um popup com a mensagem:
    ...   One moment…
    Wait Until Page Does Not Contain    One moment…

Confirmo o valor da compra
    [Arguments]     ${PURCHASE_VALUE}

    Element Should Contain Text     ${PURCHASE_VALUE}   ${product_price_text}
