*** Variables ***

${BT_ACCOUNT}       xpath=//XCUIElementTypeNavigationBar[@name="NinjaPixel"]/XCUIElementTypeButton
${INPUT_EMAIL}      xpath=//XCUIElementTypeTextField[@name="txtEmail"]
${INPUT_PASS}       xpath=//XCUIElementTypeSecureTextField[@name="txtPassword"]
${BT_LOGIN}         id=btnLogin

${REFRESH_CART}     xpath=//XCUIElementTypeNavigationBar[@name="CARRINHO"]/XCUIElementTypeButton

${POPUP}            xpath=//XCUIElementTypeAlert//XCUIElementTypeStaticText[last()]
${POPUP_OK}         xpath=//XCUIElementTypeAlert//XCUIElementTypeButton[@name="OK"]


${MENU_LIST}        xpath=//XCUIElementTypeTabBar//XCUIElementTypeButton

# Paypal
${PAYPAL_EMAIL}     xpath=//XCUIElementTypeTextField[@value='Email']
${PAYPAL_PASS}      xpath=//XCUIElementTypeSecureTextField[@value='Password']
${PAYPAL_LOGIN}     xpath=//*[@name='Log In']
${PAYPAL_PAY}       xpath=//*[@name='Pay']